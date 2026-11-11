import Foundation
import OCICommon

// MARK: - Configuration

public struct Configuration: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var zprStatus: ConfigurationZprStatusEnum
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: ConfigurationLifecycleStateEnum
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, zprStatus, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                zprStatus: ConfigurationZprStatusEnum,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: ConfigurationLifecycleStateEnum,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.zprStatus = zprStatus
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Configuration: CustomStringConvertible {
    public var description: String { "Configuration()" }
}