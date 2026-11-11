import Foundation
import OCICommon

// MARK: - KafkaClusterSummary

public struct KafkaClusterSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var timeCreated: Date?
    public var lifecycleState: KafkaClusterLifecycleStateEnum
    public var accessSubnets: [SubnetSet]
    public var kafkaVersion: String?
    public var clusterType: KafkaClusterClusterTypeEnum
    public var brokerShape: BrokerShape?
    public var clusterConfigId: String?
    public var clusterConfigVersion: Int?
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var coordinationType: KafkaClusterCoordinationTypeEnum?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, timeCreated, lifecycleState, accessSubnets, kafkaVersion, clusterType, brokerShape, clusterConfigId, clusterConfigVersion, freeformTags, definedTags, timeUpdated, lifecycleDetails, coordinationType, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: KafkaClusterLifecycleStateEnum,
                accessSubnets: [SubnetSet],
                kafkaVersion: String? = nil,
                clusterType: KafkaClusterClusterTypeEnum,
                brokerShape: BrokerShape? = nil,
                clusterConfigId: String? = nil,
                clusterConfigVersion: Int? = nil,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                coordinationType: KafkaClusterCoordinationTypeEnum? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.accessSubnets = accessSubnets
        self.kafkaVersion = kafkaVersion
        self.clusterType = clusterType
        self.brokerShape = brokerShape
        self.clusterConfigId = clusterConfigId
        self.clusterConfigVersion = clusterConfigVersion
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.coordinationType = coordinationType
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KafkaClusterSummary: CustomStringConvertible {
    public var description: String { "KafkaClusterSummary()" }
}