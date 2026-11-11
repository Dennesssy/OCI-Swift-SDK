import Foundation
import OCICommon

// MARK: - DeploymentSummary

public struct DeploymentSummary: Codable, Sendable {

    public var id: String?
    public var gatewayId: String?
    public var compartmentId: String?
    public var pathPrefix: String?
    public var endpoint: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: DeploymentLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var locks: [ResourceLock]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, gatewayId, compartmentId, pathPrefix, endpoint, displayName, timeCreated, timeUpdated, lifecycleState, lifecycleDetails, locks, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                gatewayId: String? = nil,
                compartmentId: String? = nil,
                pathPrefix: String? = nil,
                endpoint: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: DeploymentLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                locks: [ResourceLock]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.gatewayId = gatewayId
        self.compartmentId = compartmentId
        self.pathPrefix = pathPrefix
        self.endpoint = endpoint
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.locks = locks
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeploymentSummary: CustomStringConvertible {
    public var description: String { "DeploymentSummary()" }
}