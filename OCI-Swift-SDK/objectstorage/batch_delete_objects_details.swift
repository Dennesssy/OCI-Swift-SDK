import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/batch_delete_objects_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct BatchDeleteObjectsDetails: Codable, Sendable {
    public var objects: [BatchDeleteObjectIdentifier]
    public var isSkipDeletedResult: Bool?

    public init(objects: [BatchDeleteObjectIdentifier], isSkipDeletedResult: Bool? = nil) {
        self.objects = objects
        self.isSkipDeletedResult = isSkipDeletedResult
    }
}
