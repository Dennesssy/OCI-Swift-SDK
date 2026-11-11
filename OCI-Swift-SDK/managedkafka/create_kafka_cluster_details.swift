import Foundation
import OCICommon

// MARK: - CreateKafkaClusterDetails

public struct CreateKafkaClusterDetails: Codable, Sendable {

    public var compartmentId: String?
    public var accessSubnets: [SubnetSet]
    public var kafkaVersion: String?
    public var clusterType: KafkaClusterClusterTypeEnum
    public var brokerShape: BrokerShape?
    public var clusterConfigId: String?
    public var clusterConfigVersion: Int?
    public var coordinationType: KafkaClusterCoordinationTypeEnum
    public var displayName: String?
    public var clientCertificateBundle: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, accessSubnets, kafkaVersion, clusterType, brokerShape, clusterConfigId, clusterConfigVersion, coordinationType, displayName, clientCertificateBundle, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                accessSubnets: [SubnetSet],
                kafkaVersion: String? = nil,
                clusterType: KafkaClusterClusterTypeEnum,
                brokerShape: BrokerShape? = nil,
                clusterConfigId: String? = nil,
                clusterConfigVersion: Int? = nil,
                coordinationType: KafkaClusterCoordinationTypeEnum,
                displayName: String? = nil,
                clientCertificateBundle: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.accessSubnets = accessSubnets
        self.kafkaVersion = kafkaVersion
        self.clusterType = clusterType
        self.brokerShape = brokerShape
        self.clusterConfigId = clusterConfigId
        self.clusterConfigVersion = clusterConfigVersion
        self.coordinationType = coordinationType
        self.displayName = displayName
        self.clientCertificateBundle = clientCertificateBundle
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKafkaClusterDetails: CustomStringConvertible {
    public var description: String { "CreateKafkaClusterDetails()" }
}