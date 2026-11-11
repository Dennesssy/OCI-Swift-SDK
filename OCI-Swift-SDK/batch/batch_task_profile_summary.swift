import Foundation
import OCICommon

// MARK: - BatchTaskProfileSummary

public struct BatchTaskProfileSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: BatchTaskProfileLifecycleStateEnum
    public var timeCreated: Date?
    public var definedTags: [String: [String: JSONValue]]
    public var freeformTags: [String: String]
    public var systemTags: [String: [String: JSONValue]]
    public var description: String?
    public var minOcpus: Int?
    public var minMemoryInGBs: Int?
    public var minDiskSizeInGBs: Int?
    public var extendedInformation: JSONValue?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, lifecycleState, timeCreated, definedTags, freeformTags, systemTags, description, minOcpus, minMemoryInGBs, minDiskSizeInGBs, extendedInformation, timeUpdated
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: BatchTaskProfileLifecycleStateEnum,
                timeCreated: Date? = nil,
                definedTags: [String: [String: JSONValue]],
                freeformTags: [String: String],
                systemTags: [String: [String: JSONValue]],
                description: String? = nil,
                minOcpus: Int? = nil,
                minMemoryInGBs: Int? = nil,
                minDiskSizeInGBs: Int? = nil,
                extendedInformation: JSONValue? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
        self.description = description
        self.minOcpus = minOcpus
        self.minMemoryInGBs = minMemoryInGBs
        self.minDiskSizeInGBs = minDiskSizeInGBs
        self.extendedInformation = extendedInformation
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
