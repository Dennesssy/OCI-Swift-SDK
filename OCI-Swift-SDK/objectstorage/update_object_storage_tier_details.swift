import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/update_object_storage_tier_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct UpdateObjectStorageTierDetails: Codable, Sendable {
    public var objectName: String
    public var storageTier: StorageTierEnum
    public var versionId: String?

    public init(objectName: String, storageTier: StorageTierEnum, versionId: String? = nil) {
        self.objectName = objectName
        self.storageTier = storageTier
        self.versionId = versionId
    }
}
