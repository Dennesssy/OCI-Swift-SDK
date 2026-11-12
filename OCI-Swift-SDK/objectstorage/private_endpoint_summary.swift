import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/private_endpoint_summary.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct PrivateEndpointSummary: Codable, Sendable {
    public var name: String?
    public var namespace: String?
    public var compartmentId: String?
    public var createdBy: String?
    public var timeCreated: Date?
    public var timeModified: Date?
    public var prefix: String?
    public var fqdns: Fqdns?
    public var etag: String?
    public var lifecycleState: PrivateEndpointLifecycleStateEnum?

    public init(name: String? = nil, namespace: String? = nil, compartmentId: String? = nil, createdBy: String? = nil, timeCreated: Date? = nil, timeModified: Date? = nil, prefix: String? = nil, fqdns: Fqdns? = nil, etag: String? = nil, lifecycleState: PrivateEndpointLifecycleStateEnum? = nil) {
        self.name = name
        self.namespace = namespace
        self.compartmentId = compartmentId
        self.createdBy = createdBy
        self.timeCreated = timeCreated
        self.timeModified = timeModified
        self.prefix = prefix
        self.fqdns = fqdns
        self.etag = etag
        self.lifecycleState = lifecycleState
    }
}
