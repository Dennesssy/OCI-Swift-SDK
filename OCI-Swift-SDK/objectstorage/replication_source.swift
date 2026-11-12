import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/replication_source.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ReplicationSource: Codable, Sendable {
    public var policyName: String?
    public var sourceRegionName: String?
    public var sourceBucketName: String?

    public init(policyName: String? = nil, sourceRegionName: String? = nil, sourceBucketName: String? = nil) {
        self.policyName = policyName
        self.sourceRegionName = sourceRegionName
        self.sourceBucketName = sourceBucketName
    }
}
