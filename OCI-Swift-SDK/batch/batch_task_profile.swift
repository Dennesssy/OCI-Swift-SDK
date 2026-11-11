import Foundation
import OCICommon

// MARK: - BatchTaskProfile

public struct BatchTaskProfile: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var minOcpus: Int?
    public var minMemoryInGBs: Int?
    public var lifecycleState: BatchTaskProfileLifecycleStateEnum
    public var timeCreated: Date?
    public var definedTags: [String: [String: JSONValue]]
    public var freeformTags: [String: String]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var minDiskSizeInGBs: Int?
    public var extendedInformation: JSONValue?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, minOcpus, minMemoryInGBs, lifecycleState, timeCreated, definedTags, freeformTags, systemTags, description, minDiskSizeInGBs, extendedInformation, timeUpdated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                minOcpus: Int? = nil,
                minMemoryInGBs: Int? = nil,
                lifecycleState: BatchTaskProfileLifecycleStateEnum,
                timeCreated: Date? = nil,
                definedTags: [String: [String: JSONValue]],
                freeformTags: [String: String],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                minDiskSizeInGBs: Int? = nil,
                extendedInformation: JSONValue? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.minOcpus = minOcpus
        self.minMemoryInGBs = minMemoryInGBs
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.description = description
        self.minDiskSizeInGBs = minDiskSizeInGBs
        self.extendedInformation = extendedInformation
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
