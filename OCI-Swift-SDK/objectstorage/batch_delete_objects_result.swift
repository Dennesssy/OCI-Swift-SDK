import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/batch_delete_objects_result.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct BatchDeleteObjectsResult: Codable, Sendable {
    public var deleted: [DeletedObjectResult]?
    public var failed: [FailedObjectResult]?

    public init(deleted: [DeletedObjectResult]? = nil, failed: [FailedObjectResult]? = nil) {
        self.deleted = deleted
        self.failed = failed
    }
}
