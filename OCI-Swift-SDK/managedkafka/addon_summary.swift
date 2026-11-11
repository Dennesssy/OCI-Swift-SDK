import Foundation

// MARK: - AddonSummary

public struct AddonSummary: Codable, Sendable {

    public var name: String?
    public var lifecycleState: KafkaClusterAddonLifecycleStateEnum
    public var addonType: KafkaClusterAddonAddonTypeEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?

    private enum CodingKeys: String, CodingKey {
        case name, lifecycleState, addonType, timeCreated, timeUpdated, lifecycleDetails
    }

    public init(
                name: String? = nil,
                lifecycleState: KafkaClusterAddonLifecycleStateEnum,
                addonType: KafkaClusterAddonAddonTypeEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil
    ) {
        self.name = name
        self.lifecycleState = lifecycleState
        self.addonType = addonType
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddonSummary: CustomStringConvertible {
    public var description: String { "AddonSummary()" }
}