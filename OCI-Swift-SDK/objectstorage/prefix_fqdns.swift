import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/prefix_fqdns.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct PrefixFqdns: Codable, Sendable {
    public var objectStorageApiFqdn: String?
    public var s3CompatibilityApiFqdn: String?
    public var swiftApiFqdn: String?

    public init(objectStorageApiFqdn: String? = nil, s3CompatibilityApiFqdn: String? = nil, swiftApiFqdn: String? = nil) {
        self.objectStorageApiFqdn = objectStorageApiFqdn
        self.s3CompatibilityApiFqdn = s3CompatibilityApiFqdn
        self.swiftApiFqdn = swiftApiFqdn
    }
}
