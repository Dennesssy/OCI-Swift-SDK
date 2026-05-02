// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation
import WebKit

/**
 * Bridge between JavaScript frontend and OCI Swift SDK
 */
class OCIJSBridge: NSObject {
    
    weak var webView: WKWebView?
    var apiService: OCIAPIService?
    
    init(webView: WKWebView) {
        self.webView = webView
        super.init()
        
        // Initialize API service with OCI Swift SDK
        self.apiService = OCIAPIService(bridge: self)
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
}
