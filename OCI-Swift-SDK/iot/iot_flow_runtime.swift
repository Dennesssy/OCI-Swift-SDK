import Foundation
import OCICommon

// MARK: - IotFlowRuntime

public struct IotFlowRuntime: Codable, Sendable {

    public var id: String?
    public var iotDomainId: String?
    public var compartmentId: String?
    public var displayName: String?
    public var scale: IotFlowRuntimeScaleEnum
    public var lifecycleState: IotFlowRuntimeLifecycleStateEnum
    public var timeCreated: Date?
    public var description: String?
    public var logConfig: LogConfigDetails?
    public var flowRuntimeHost: String?
    public var networkConfig: NetworkConfigDetails?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case id, iotDomainId, compartmentId, displayName, scale, lifecycleState, timeCreated, description, logConfig, flowRuntimeHost, networkConfig, freeformTags, definedTags, systemTags, timeUpdated
    }

    public init(
                id: String? = nil,
                iotDomainId: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                scale: IotFlowRuntimeScaleEnum,
                lifecycleState: IotFlowRuntimeLifecycleStateEnum,
                timeCreated: Date? = nil,
                description: String? = nil,
                logConfig: LogConfigDetails? = nil,
                flowRuntimeHost: String? = nil,
                networkConfig: NetworkConfigDetails? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil,
                timeUpdated: Date? = nil
    ) {
        self.id = id
        self.iotDomainId = iotDomainId
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.scale = scale
        self.lifecycleState = lifecycleState
        self.timeCreated = timeCreated
        self.description = description
        self.logConfig = logConfig
        self.flowRuntimeHost = flowRuntimeHost
        self.networkConfig = networkConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
