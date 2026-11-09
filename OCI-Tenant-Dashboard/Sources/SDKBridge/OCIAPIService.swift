// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation

/**
 * Service layer for OCI API calls using the Swift SDK
 */
@MainActor
class OCIAPIService {
    
    weak var bridge: OCIJSBridge?
    let authManager: AuthManager
    
    // SDK client wiring pending — all generated clients are stubs and the
    // shared HTTPClient/Signer/Region runtime is not yet implemented.
    // Handlers below return mock data until real transport lands.
    
    init(bridge: OCIJSBridge, authManager: AuthManager) {
        self.bridge = bridge
        self.authManager = authManager
        initializeClients()
    }
    
    func initializeClients() {
        // TODO: Load auth config from secure storage
        // and initialize all SDK clients once the runtime transport exists
    }
    
    /**
     * Route API calls to appropriate SDK client
     */
    func call(
        service: String,
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        
        switch service {
        case "core":
            return try await handleCore(operation: operation, params: params)
            
        case "objectstorage":
            return try await handleObjectStorage(operation: operation, params: params)
            
        case "budget":
            return try await handleBudget(operation: operation, params: params)
            
        case "keymanagement":
            return try await handleKeyManagement(operation: operation, params: params)
            
        case "auth":
            return try await handleAuth(operation: operation, params: params)
            
        default:
            throw OCIError.unknownService(service)
        }
    }
    
    // MARK: - Core (Compute)
    
    func handleCore(
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        // computeClient unavailable: SDK has no compute client yet; mock data
        
        switch operation {
        case "listInstances":
            let compartmentId = params["compartmentId"] as? String ?? ""
            // Call OCI Swift SDK
            // let response = try await client.listInstances(...)
            return [
                "items": [
                    [
                        "id": "ocid1.instance.oc1.iad.anuwcljtnz7vq",
                        "displayName": "Web Server",
                        "lifecycleState": "RUNNING",
                        "shape": "VM.Standard2.1"
                    ],
                    [
                        "id": "ocid1.instance.oc1.iad.anuwcljtnz7vr",
                        "displayName": "Database",
                        "lifecycleState": "RUNNING",
                        "shape": "VM.Standard2.4"
                    ]
                ]
            ]
            
        case "instanceAction":
            let instanceId = params["instanceId"] as? String ?? ""
            let action = params["action"] as? String ?? ""
            // try await client.instanceAction(instanceId: instanceId, action: action)
            return ["success": true]
            
        default:
            throw OCIError.unknownOperation(operation)
        }
    }
    
    // MARK: - Object Storage
    
    func handleObjectStorage(
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        // objectStorageClient pending real transport; mock data below
        
        switch operation {
        case "listBuckets":
            return [
                "items": [
                    ["name": "app-logs", "namespace": "tenant-namespace"],
                    ["name": "backups", "namespace": "tenant-namespace"],
                    ["name": "assets", "namespace": "tenant-namespace"]
                ]
            ]
            
        case "listObjects":
            return [
                "objects": [
                    ["name": "file1.txt", "size": 1024],
                    ["name": "file2.jpg", "size": 2048]
                ]
            ]
            
        default:
            throw OCIError.unknownOperation(operation)
        }
    }
    
    // MARK: - Budget
    
    func handleBudget(
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        switch operation {
        case "getCurrentSpend":
            return [
                "amount": 45.23,
                "currency": "USD",
                "timeRange": "MTD"
            ]
            
        default:
            throw OCIError.unknownOperation(operation)
        }
    }
    
    // MARK: - Key Management
    
    func handleKeyManagement(
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        switch operation {
        case "listVaults":
            return [
                "items": [
                    [
                        "id": "ocid1.vault.oc1.iad.anuwcljtnz7vq",
                        "displayName": "Production Keys",
                        "lifecycleState": "ACTIVE"
                    ]
                ]
            ]
            
        default:
            throw OCIError.unknownOperation(operation)
        }
    }
    
    // MARK: - Auth
    
    func handleAuth(
        operation: String,
        params: [String: Any]
    ) async throws -> [String: Any] {
        switch operation {
        case "getConfig":
            // Load from secure storage (Keychain)
            return [
                "tenancy": UserDefaults.standard.string(forKey: "oci_tenancy") ?? "",
                "user": UserDefaults.standard.string(forKey: "oci_user") ?? "",
                "region": UserDefaults.standard.string(forKey: "oci_region") ?? "us-ashburn-1"
            ]
            
        case "setConfig":
            // Save to secure storage
            if let tenancy = params["tenancy"] as? String {
                UserDefaults.standard.set(tenancy, forKey: "oci_tenancy")
            }
            return ["success": true]
            
        default:
            throw OCIError.unknownOperation(operation)
        }
    }
}

// MARK: - Errors

enum OCIError: Error {
    case unknownService(String)
    case unknownOperation(String)
    case clientNotInitialized(String)
    case authenticationFailed
    
    var localizedDescription: String {
        switch self {
        case .unknownService(let service):
            return "Unknown service: \(service)"
        case .unknownOperation(let operation):
            return "Unknown operation: \(operation)"
        case .clientNotInitialized(let client):
            return "\(client) client not initialized"
        case .authenticationFailed:
            return "OCI authentication failed"
        }
    }
}
