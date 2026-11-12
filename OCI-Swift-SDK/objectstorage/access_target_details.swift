import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/access_target_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct AccessTargetDetails: Codable, Sendable {
    public var namespace: String
    public var compartmentId: String
    public var bucket: String

    public init(namespace: String, compartmentId: String, bucket: String) {
        self.namespace = namespace
        self.compartmentId = compartmentId
        self.bucket = bucket
    }
}
