import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/reencrypt_object_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ReencryptObjectDetails: Codable, Sendable {
    public var kmsKeyId: String?
    public var sseCustomerKey: SseCustomerKeyDetails?
    public var sourceSseCustomerKey: SseCustomerKeyDetails?

    public init(kmsKeyId: String? = nil, sseCustomerKey: SseCustomerKeyDetails? = nil, sourceSseCustomerKey: SseCustomerKeyDetails? = nil) {
        self.kmsKeyId = kmsKeyId
        self.sseCustomerKey = sseCustomerKey
        self.sourceSseCustomerKey = sourceSseCustomerKey
    }
}
