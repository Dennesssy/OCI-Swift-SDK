import Foundation
import OCICommon

// MARK: - FppServer

public struct FppServer: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: FppServerLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var managementAgentId: String?
    public var macAgentCompartmentId: String?
    public var fppRestUrl: String?
    public var trustStoreLocation: String?
    public var trustStorePassword: String?
    public var restUserName: String?
    public var restUserPassword: String?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, freeformTags, definedTags, managementAgentId, macAgentCompartmentId, fppRestUrl, trustStoreLocation, trustStorePassword, restUserName, restUserPassword, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: FppServerLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                managementAgentId: String? = nil,
                macAgentCompartmentId: String? = nil,
                fppRestUrl: String? = nil,
                trustStoreLocation: String? = nil,
                trustStorePassword: String? = nil,
                restUserName: String? = nil,
                restUserPassword: String? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.managementAgentId = managementAgentId
        self.macAgentCompartmentId = macAgentCompartmentId
        self.fppRestUrl = fppRestUrl
        self.trustStoreLocation = trustStoreLocation
        self.trustStorePassword = trustStorePassword
        self.restUserName = restUserName
        self.restUserPassword = restUserPassword
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FppServer: CustomStringConvertible {
    public var description: String { "FppServer()" }
}