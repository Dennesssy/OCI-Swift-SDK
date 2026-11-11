import Foundation

// MARK: - kafkaclusteraddon

public struct kafkaclusteraddon: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var name: String?
    public var lifecycleState: KafkaClusterAddonLifecycleStateEnum
    public var addonType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, timeCreated, timeUpdated, name, lifecycleState, addonType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                name: String? = nil,
                lifecycleState: KafkaClusterAddonLifecycleStateEnum,
                addonType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.name = name
        self.lifecycleState = lifecycleState
        self.addonType = addonType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
