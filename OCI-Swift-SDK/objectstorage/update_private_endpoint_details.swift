import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/update_private_endpoint_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct UpdatePrivateEndpointDetails: Codable, Sendable {
    public var name: String?
    public var namespace: String?
    public var accessTargets: [AccessTargetDetails]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?

    public init(name: String? = nil, namespace: String? = nil, accessTargets: [AccessTargetDetails]? = nil, freeformTags: [String: String]? = nil, definedTags: [String: [String: JSONValue]]? = nil, securityAttributes: [String: [String: JSONValue]]? = nil) {
        self.name = name
        self.namespace = namespace
        self.accessTargets = accessTargets
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
    }
}
