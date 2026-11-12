import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/failed_object_result.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct FailedObjectResult: Codable, Sendable {
    public var objectName: String?
    public var statusCode: Int?
    public var errorMessage: String?

    public init(objectName: String? = nil, statusCode: Int? = nil, errorMessage: String? = nil) {
        self.objectName = objectName
        self.statusCode = statusCode
        self.errorMessage = errorMessage
    }
}
