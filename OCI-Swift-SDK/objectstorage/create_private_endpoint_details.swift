import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/create_private_endpoint_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct CreatePrivateEndpointDetails: Codable, Sendable {
    public var name: String
    public var compartmentId: String
    public var subnetId: String
    public var prefix: String
    public var accessTargets: [AccessTargetDetails]
    public var additionalPrefixes: [String]?
    public var privateEndpointIp: String?
    public var nsgIds: [String]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?

    public init(name: String, compartmentId: String, subnetId: String, prefix: String, accessTargets: [AccessTargetDetails], additionalPrefixes: [String]? = nil, privateEndpointIp: String? = nil, nsgIds: [String]? = nil, freeformTags: [String: String]? = nil, definedTags: [String: [String: JSONValue]]? = nil, securityAttributes: [String: [String: JSONValue]]? = nil) {
        self.name = name
        self.compartmentId = compartmentId
        self.subnetId = subnetId
        self.prefix = prefix
        self.accessTargets = accessTargets
        self.additionalPrefixes = additionalPrefixes
        self.privateEndpointIp = privateEndpointIp
        self.nsgIds = nsgIds
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
    }
}
