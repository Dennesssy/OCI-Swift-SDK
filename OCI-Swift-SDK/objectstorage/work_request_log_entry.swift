import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/work_request_log_entry.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct WorkRequestLogEntry: Codable, Sendable {
    public var message: String?
    public var timestamp: Date?

    public init(message: String? = nil, timestamp: Date? = nil) {
        self.message = message
        self.timestamp = timestamp
    }
}
