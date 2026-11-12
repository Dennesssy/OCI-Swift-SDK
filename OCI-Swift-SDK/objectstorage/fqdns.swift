import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/fqdns.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct Fqdns: Codable, Sendable {
    public var prefixFqdns: PrefixFqdns?
    public var additionalPrefixesFqdns: [String: PrefixFqdns]?

    public init(prefixFqdns: PrefixFqdns? = nil, additionalPrefixesFqdns: [String: PrefixFqdns]? = nil) {
        self.prefixFqdns = prefixFqdns
        self.additionalPrefixesFqdns = additionalPrefixesFqdns
    }
}
