import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/rename_object_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct RenameObjectDetails: Codable, Sendable {
    public var sourceName: String
    public var newName: String
    public var srcObjIfMatchETag: String?
    public var newObjIfMatchETag: String?
    public var newObjIfNoneMatchETag: String?

    public init(sourceName: String, newName: String, srcObjIfMatchETag: String? = nil, newObjIfMatchETag: String? = nil, newObjIfNoneMatchETag: String? = nil) {
        self.sourceName = sourceName
        self.newName = newName
        self.srcObjIfMatchETag = srcObjIfMatchETag
        self.newObjIfMatchETag = newObjIfMatchETag
        self.newObjIfNoneMatchETag = newObjIfNoneMatchETag
    }
}
