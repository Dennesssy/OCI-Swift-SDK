import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/restore_objects_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct RestoreObjectsDetails: Codable, Sendable {
    public var objectName: String
    public var hours: Int?
    public var versionId: String?

    public init(objectName: String, hours: Int? = nil, versionId: String? = nil) {
        self.objectName = objectName
        self.hours = hours
        self.versionId = versionId
    }
}
