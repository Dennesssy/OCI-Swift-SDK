import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/object_version_summary.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ObjectVersionSummary: Codable, Sendable {
    public var name: String?
    public var timeModified: Date?
    public var versionId: String?
    public var isDeleteMarker: Bool?
    public var size: Int64?
    public var md5: String?
    public var timeCreated: Date?
    public var etag: String?
    public var storageTier: StorageTierEnum?
    public var archivalState: ArchivalStateEnum?

    public init(name: String? = nil, timeModified: Date? = nil, versionId: String? = nil, isDeleteMarker: Bool? = nil, size: Int64? = nil, md5: String? = nil, timeCreated: Date? = nil, etag: String? = nil, storageTier: StorageTierEnum? = nil, archivalState: ArchivalStateEnum? = nil) {
        self.name = name
        self.timeModified = timeModified
        self.versionId = versionId
        self.isDeleteMarker = isDeleteMarker
        self.size = size
        self.md5 = md5
        self.timeCreated = timeCreated
        self.etag = etag
        self.storageTier = storageTier
        self.archivalState = archivalState
    }
}
