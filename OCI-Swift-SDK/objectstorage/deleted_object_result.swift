import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/deleted_object_result.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct DeletedObjectResult: Codable, Sendable {
    public var objectName: String?
    public var timeLastModified: Date?

    public init(objectName: String? = nil, timeLastModified: Date? = nil) {
        self.objectName = objectName
        self.timeLastModified = timeLastModified
    }
}
