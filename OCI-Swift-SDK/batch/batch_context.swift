import Foundation
import OCICommon

// MARK: - BatchContext

public struct BatchContext: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var lifecycleState: BatchContextLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var jobPriorityConfigurations: [JobPriorityConfiguration]
    public var network: Network?
    public var fleets: [JSONValue]
    public var entitlements: [String: Int]
    public var description: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var loggingConfiguration: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, timeCreated, lifecycleState, freeformTags, definedTags, systemTags, jobPriorityConfigurations, network, fleets, entitlements, description, timeUpdated, lifecycleDetails, loggingConfiguration
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: BatchContextLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                jobPriorityConfigurations: [JobPriorityConfiguration],
                network: Network? = nil,
                fleets: [JSONValue],
                entitlements: [String: Int],
                description: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                loggingConfiguration: JSONValue? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.jobPriorityConfigurations = jobPriorityConfigurations
        self.network = network
        self.fleets = fleets
        self.entitlements = entitlements
        self.description = description
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.loggingConfiguration = loggingConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
