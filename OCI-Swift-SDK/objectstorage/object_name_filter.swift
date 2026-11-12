import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/object_name_filter.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ObjectNameFilter: Codable, Sendable {
    public var inclusionPatterns: [String]?
    public var exclusionPatterns: [String]?
    public var inclusionPrefixes: [String]?

    public init(inclusionPatterns: [String]? = nil, exclusionPatterns: [String]? = nil, inclusionPrefixes: [String]? = nil) {
        self.inclusionPatterns = inclusionPatterns
        self.exclusionPatterns = exclusionPatterns
        self.inclusionPrefixes = inclusionPrefixes
    }
}
