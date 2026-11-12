import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/list_objects.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ListObjects: Codable, Sendable {
    public var objects: [ObjectSummary]?
    public var prefixes: [String]?
    public var nextStartWith: String?

    public init(objects: [ObjectSummary]? = nil, prefixes: [String]? = nil, nextStartWith: String? = nil) {
        self.objects = objects
        self.prefixes = prefixes
        self.nextStartWith = nextStartWith
    }
}
