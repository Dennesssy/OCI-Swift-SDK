import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/object_version_collection.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ObjectVersionCollection: Codable, Sendable {
    public var items: [ObjectVersionSummary]?
    public var prefixes: [String]?

    public init(items: [ObjectVersionSummary]? = nil, prefixes: [String]? = nil) {
        self.items = items
        self.prefixes = prefixes
    }
}
