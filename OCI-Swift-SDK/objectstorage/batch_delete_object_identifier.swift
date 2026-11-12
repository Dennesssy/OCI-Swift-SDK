import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/batch_delete_object_identifier.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct BatchDeleteObjectIdentifier: Codable, Sendable {
    public var objectName: String?
    public var ifMatch: String?

    public init(objectName: String? = nil, ifMatch: String? = nil) {
        self.objectName = objectName
        self.ifMatch = ifMatch
    }
}
