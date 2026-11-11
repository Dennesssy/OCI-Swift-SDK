import Foundation
import OCICommon

// MARK: - SyncJob

public struct SyncJob: Codable, Sendable {

    public var id: String?
    public var jobType: SyncJobJobTypeEnum
    public var lifecycleState: SyncJobLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var isOverwrite: Bool?
    public var totalObjectsScanned: Int64?
    public var objectsTransferred: Int64?
    public var bytesTransferred: Int64?
    public var skippedErrorCount: Int64?
    public var timeStarted: Date?
    public var lustreFileSystemPath: String?
    public var objectStoragePath: String?
    public var parentId: String?
    public var lifecycleDetails: String?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case id, jobType, lifecycleState, freeformTags, definedTags, systemTags, isOverwrite, totalObjectsScanned, objectsTransferred, bytesTransferred, skippedErrorCount, timeStarted, lustreFileSystemPath, objectStoragePath, parentId, lifecycleDetails, timeFinished
    }

    public init(
                id: String? = nil,
                jobType: SyncJobJobTypeEnum,
                lifecycleState: SyncJobLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                isOverwrite: Bool? = nil,
                totalObjectsScanned: Int64? = nil,
                objectsTransferred: Int64? = nil,
                bytesTransferred: Int64? = nil,
                skippedErrorCount: Int64? = nil,
                timeStarted: Date? = nil,
                lustreFileSystemPath: String? = nil,
                objectStoragePath: String? = nil,
                parentId: String? = nil,
                lifecycleDetails: String? = nil,
                timeFinished: Date? = nil
    ) {
        self.id = id
        self.jobType = jobType
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.isOverwrite = isOverwrite
        self.totalObjectsScanned = totalObjectsScanned
        self.objectsTransferred = objectsTransferred
        self.bytesTransferred = bytesTransferred
        self.skippedErrorCount = skippedErrorCount
        self.timeStarted = timeStarted
        self.lustreFileSystemPath = lustreFileSystemPath
        self.objectStoragePath = objectStoragePath
        self.parentId = parentId
        self.lifecycleDetails = lifecycleDetails
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SyncJob: CustomStringConvertible {
    public var description: String { "SyncJob()" }
}