import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/sse_customer_key_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct SseCustomerKeyDetails: Codable, Sendable {
    public var algorithm: SseCustomerKeyDetailsAlgorithmEnum
    public var key: String
    public var keySha256: String

    public init(algorithm: SseCustomerKeyDetailsAlgorithmEnum, key: String, keySha256: String) {
        self.algorithm = algorithm
        self.key = key
        self.keySha256 = keySha256
    }
}

public enum SseCustomerKeyDetailsAlgorithmEnum: String, Codable, Sendable, CaseIterable {
    case aes256 = "AES256"
}
