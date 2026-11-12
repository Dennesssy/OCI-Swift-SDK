import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/request/response files: field names are the Go json tags, enum cases are the Go constants' wire values.

public enum CreateMultipartUploadOpcChecksumAlgorithmEnum: String, Codable, Sendable, CaseIterable {
    case crc32c = "CRC32C"
    case sha256 = "SHA256"
    case sha384 = "SHA384"
}

public enum GetBucketFieldsEnum: String, Codable, Sendable, CaseIterable {
    case approximateCount = "approximateCount"
    case approximateSize = "approximateSize"
    case autoTiering = "autoTiering"
}

public enum GetObjectArchivalStateEnum: String, Codable, Sendable, CaseIterable {
    case archived = "Archived"
    case restoring = "Restoring"
    case restored = "Restored"
}

public enum GetObjectStorageTierEnum: String, Codable, Sendable, CaseIterable {
    case standard = "Standard"
    case infrequentAccess = "InfrequentAccess"
    case archive = "Archive"
}

public enum HeadObjectArchivalStateEnum: String, Codable, Sendable, CaseIterable {
    case archived = "Archived"
    case restoring = "Restoring"
    case restored = "Restored"
}

public enum HeadObjectStorageTierEnum: String, Codable, Sendable, CaseIterable {
    case standard = "Standard"
    case infrequentAccess = "InfrequentAccess"
    case archive = "Archive"
}

public enum ListBucketsFieldsEnum: String, Codable, Sendable, CaseIterable {
    case tags = "tags"
}

public enum ListObjectVersionsFieldsEnum: String, Codable, Sendable, CaseIterable {
    case name = "name"
    case size = "size"
    case etag = "etag"
    case timeCreated = "timeCreated"
    case md5 = "md5"
    case timeModified = "timeModified"
    case storageTier = "storageTier"
    case archivalState = "archivalState"
}

public enum ListPrivateEndpointsFieldsEnum: String, Codable, Sendable, CaseIterable {
    case tags = "tags"
}

public enum PutObjectOpcChecksumAlgorithmEnum: String, Codable, Sendable, CaseIterable {
    case crc32c = "CRC32C"
    case sha256 = "SHA256"
    case sha384 = "SHA384"
}

public enum PutObjectStorageTierEnum: String, Codable, Sendable, CaseIterable {
    case standard = "Standard"
    case infrequentAccess = "InfrequentAccess"
    case archive = "Archive"
}

public enum UploadPartOpcChecksumAlgorithmEnum: String, Codable, Sendable, CaseIterable {
    case crc32c = "CRC32C"
    case sha256 = "SHA256"
    case sha384 = "SHA384"
}

public enum StorageTierEnum: String, Codable, Sendable, CaseIterable {
    case standard = "Standard"
    case infrequentAccess = "InfrequentAccess"
    case archive = "Archive"
}
