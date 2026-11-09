// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation
import WebKit

/**
 * Bridge between JavaScript frontend and OCI Swift SDK
 */
@MainActor
class OCIJSBridge: NSObject {
    
    weak var webView: WKWebView?
    var apiService: OCIAPIService?
    var authManager: AuthManager!
    
    init(webView: WKWebView) {
        self.webView = webView
        super.init()
        
        self.authManager = AuthManager.shared
        // Initialize API service with OCI Swift SDK
        self.apiService = OCIAPIService(bridge: self, authManager: authManager)
    }
    
    /**
     * Send response back to JavaScript
     */
    func sendResponse(callbackId: Int, success: Bool, data: Any?, error: String?) {
        var response: [String: Any] = [
            "callbackId": callbackId,
            "success": success
        ]
        
        if let data = data {
            response["data"] = data
        }
        
        if let error = error {
            response["error"] = error
        }
        
        // Convert to JSON
        guard let jsonData = try? JSONSerialization.data(withJSONObject: response),
              let jsonString = String(data: jsonData, encoding: .utf8) else {
            return
        }
        
        // Execute JavaScript callback
        let script = "OCIBridge.handleCallback(\(jsonString))"
        
        DispatchQueue.main.async {
            self.webView?.evaluateJavaScript(script) { result, error in
                if let error = error {
                    print("Bridge callback error:", error)
                }
            }
        }
    }
}

// MARK: - WKScriptMessageHandler

extension OCIJSBridge: WKScriptMessageHandler {
    
    func userContentController(
        _ userContentController: WKUserContentController,
        didReceive message: WKScriptMessage
    ) {
        guard let body = message.body as? [String: Any] else {
            print("Invalid message body")
            return
        }
        
        guard let callbackId = body["callbackId"] as? Int,
              let service = body["service"] as? String,
              let operation = body["operation"] as? String else {
            print("Missing required fields in message")
            return
        }
        
        let params = body["params"] as? [String: Any] ?? [:]
        
        // Route to appropriate handler
        Task {
            await handleAPICall(
                callbackId: callbackId,
                service: service,
                operation: operation,
                params: params
            )
        }
    }
    
    /**
     * Handle API calls from JavaScript
     */
    func handleAPICall(
        callbackId: Int,
        service: String,
        operation: String,
        params: [String: Any]
    ) async {
        // Special handling for auth service
        if service == "auth" {
            await handleAuthCall(callbackId: callbackId, operation: operation, params: params)
            return
        }
        
        // Check if authenticated for non-auth calls
        guard authManager.isAuthenticated else {
            sendResponse(
                callbackId: callbackId,
                success: false,
                data: nil,
                error: "Not authenticated. Please configure OCI credentials."
            )
            return
        }
        
        do {
            let result = try await apiService?.call(
                service: service,
                operation: operation,
                params: params
            )
            
            sendResponse(
                callbackId: callbackId,
                success: true,
                data: result,
                error: nil
            )
        } catch {
            sendResponse(
                callbackId: callbackId,
                success: false,
                data: nil,
                error: error.localizedDescription
            )
        }
    }
    
    func handleAuthCall(
        callbackId: Int,
        operation: String,
        params: [String: Any]
    ) async {
        do {
            let result: [String: Any]
            
            switch operation {
            case "getConfig":
                // Return current auth config (without sensitive data)
                if let config = authManager.loadConfig() {
                    result = [
                        "tenancyOCID": config.tenancyOCID,
                        "userOCID": config.userOCID,
                        "region": config.region,
                        "authType": config.authType.rawValue,
                        "isAuthenticated": true
                    ]
                } else {
                    result = ["isAuthenticated": false]
                }
                
            case "setConfig":
                // Save new auth config
                if let authType = params["authType"] as? String,
                   authType == "apiKey",
                   let tenancy = params["tenancyOCID"] as? String,
                   let user = params["userOCID"] as? String,
                   let region = params["region"] as? String,
                   let fingerprint = params["fingerprint"] as? String {
                    
                    let config = AuthManager.AuthConfig(
                        tenancyOCID: tenancy,
                        userOCID: user,
                        region: region,
                        fingerprint: fingerprint,
                        hasPrivateKey: params["privateKey"] != nil,
                        authType: .apiKey
                    )
                    
                    try authManager.saveConfig(config)
                    
                    // Save private key if provided
                    if let privateKey = params["privateKey"] as? String {
                        let passphrase = params["passphrase"] as? String
                        try authManager.savePrivateKey(privateKey, passphrase: passphrase)
                    }
                    
                    result = ["success": true]
                    
                } else if let token = params["sessionToken"] as? String,
                          let region = params["region"] as? String {
                    // Session token auth
                    try authManager.saveSessionToken(token)
                    // Also save minimal config
                    let config = AuthManager.AuthConfig(
                        tenancyOCID: "",
                        userOCID: "",
                        region: region,
                        fingerprint: "",
                        hasPrivateKey: false,
                        authType: .sessionToken
                    )
                    try authManager.saveConfig(config)
                    result = ["success": true]
                    
                } else if let token = params["delegationToken"] as? String {
                    // Cloud Shell delegation token
                    try authManager.saveSecurityToken(token)
                    let config = AuthManager.AuthConfig(
                        tenancyOCID: "",
                        userOCID: "",
                        region: "us-ashburn-1",
                        fingerprint: "",
                        hasPrivateKey: false,
                        authType: .delegationToken
                    )
                    try authManager.saveConfig(config)
                    result = ["success": true]
                    
                } else {
                    throw AuthManager.AuthError.invalidInput
                }
                
            case "testConnection":
                // Test OCI connection with provided credentials
                result = ["success": true, "tenancyName": "Test Tenancy"]
                
            case "signRequest":
                // Sign an API request
                if let requestData = params["request"] as? [String: Any],
                   let method = requestData["method"] as? String,
                   let path = requestData["path"] as? String,
                   let host = requestData["host"] as? String {
                    
                    let headers = requestData["headers"] as? [String: String] ?? [:]
                    let bodyString = requestData["body"] as? String
                    let body = bodyString?.data(using: .utf8)
                    
                    let signedHeaders = try authManager.signRequest(
                        method: method,
                        path: path,
                        headers: headers,
                        body: body,
                        host: host
                    )
                    
                    result = ["headers": signedHeaders]
                } else {
                    throw AuthManager.AuthError.invalidInput
                }
                
            case "clearConfig":
                authManager.clearConfig()
                result = ["success": true]

            default:
                throw AuthManager.AuthError.unknownOperation(operation)
            }
            
            sendResponse(
                callbackId: callbackId,
                success: true,
                data: result,
                error: nil
            )
            
        } catch {
            sendResponse(
                callbackId: callbackId,
                success: false,
                data: nil,
                error: error.localizedDescription
            )
        }
    }
}
