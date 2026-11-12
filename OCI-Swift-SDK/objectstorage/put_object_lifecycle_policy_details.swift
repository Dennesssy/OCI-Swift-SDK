import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/put_object_lifecycle_policy_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct PutObjectLifecyclePolicyDetails: Codable, Sendable {
    public var items: [ObjectLifecycleRule]?

    public init(items: [ObjectLifecycleRule]? = nil) {
        self.items = items
    }
}
