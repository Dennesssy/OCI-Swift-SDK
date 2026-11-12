import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/work_request_error.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct WorkRequestError: Codable, Sendable {
    public var code: String?
    public var message: String?
    public var timestamp: Date?

    public init(code: String? = nil, message: String? = nil, timestamp: Date? = nil) {
        self.code = code
        self.message = message
        self.timestamp = timestamp
    }
}
