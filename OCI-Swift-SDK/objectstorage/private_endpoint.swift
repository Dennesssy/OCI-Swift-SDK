import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/private_endpoint.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct PrivateEndpoint: Codable, Sendable {
    public var name: String?
    public var namespace: String?
    public var compartmentId: String?
    public var createdBy: String?
    public var timeCreated: Date?
    public var timeModified: Date?
    public var subnetId: String?
    public var privateEndpointIp: String?
    public var prefix: String?
    public var fqdns: Fqdns?
    public var etag: String?
    public var accessTargets: [AccessTargetDetails]?
    public var additionalPrefixes: [String]?
    public var nsgIds: [String]?
    public var lifecycleState: PrivateEndpointLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var securityAttributes: [String: [String: JSONValue]]?
    public var id: String?

    public init(name: String? = nil, namespace: String? = nil, compartmentId: String? = nil, createdBy: String? = nil, timeCreated: Date? = nil, timeModified: Date? = nil, subnetId: String? = nil, privateEndpointIp: String? = nil, prefix: String? = nil, fqdns: Fqdns? = nil, etag: String? = nil, accessTargets: [AccessTargetDetails]? = nil, additionalPrefixes: [String]? = nil, nsgIds: [String]? = nil, lifecycleState: PrivateEndpointLifecycleStateEnum? = nil, freeformTags: [String: String]? = nil, definedTags: [String: [String: JSONValue]]? = nil, securityAttributes: [String: [String: JSONValue]]? = nil, id: String? = nil) {
        self.name = name
        self.namespace = namespace
        self.compartmentId = compartmentId
        self.createdBy = createdBy
        self.timeCreated = timeCreated
        self.timeModified = timeModified
        self.subnetId = subnetId
        self.privateEndpointIp = privateEndpointIp
        self.prefix = prefix
        self.fqdns = fqdns
        self.etag = etag
        self.accessTargets = accessTargets
        self.additionalPrefixes = additionalPrefixes
        self.nsgIds = nsgIds
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.securityAttributes = securityAttributes
        self.id = id
    }
}

public enum PrivateEndpointLifecycleStateEnum: String, Codable, Sendable, CaseIterable {
    case creating = "CREATING"
    case active = "ACTIVE"
    case inactive = "INACTIVE"
    case updating = "UPDATING"
    case deleting = "DELETING"
    case deleted = "DELETED"
    case failed = "FAILED"
}
