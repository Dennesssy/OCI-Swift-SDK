import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/object_lifecycle_policy.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ObjectLifecyclePolicy: Codable, Sendable {
    public var timeCreated: Date?
    public var items: [ObjectLifecycleRule]?

    public init(timeCreated: Date? = nil, items: [ObjectLifecycleRule]? = nil) {
        self.timeCreated = timeCreated
        self.items = items
    }
}
