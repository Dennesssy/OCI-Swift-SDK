import Foundation
import OCICommon

// MARK: - ObjectStorageLink

public struct ObjectStorageLink: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: ObjectStorageLinkLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var lustreFileSystemId: String?
    public var fileSystemPath: String?
    public var objectStoragePrefix: String?
    public var isOverwrite: Bool?
    public var lifecycleDetails: String?
    public var currentJobId: String?
    public var lastJobId: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, availabilityDomain, displayName, timeCreated, timeUpdated, lifecycleState, freeformTags, definedTags, systemTags, lustreFileSystemId, fileSystemPath, objectStoragePrefix, isOverwrite, lifecycleDetails, currentJobId, lastJobId
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: ObjectStorageLinkLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                lustreFileSystemId: String? = nil,
                fileSystemPath: String? = nil,
                objectStoragePrefix: String? = nil,
                isOverwrite: Bool? = nil,
                lifecycleDetails: String? = nil,
                currentJobId: String? = nil,
                lastJobId: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.lustreFileSystemId = lustreFileSystemId
        self.fileSystemPath = fileSystemPath
        self.objectStoragePrefix = objectStoragePrefix
        self.isOverwrite = isOverwrite
        self.lifecycleDetails = lifecycleDetails
        self.currentJobId = currentJobId
        self.lastJobId = lastJobId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ObjectStorageLink: CustomStringConvertible {
    public var description: String { "ObjectStorageLink()" }
}