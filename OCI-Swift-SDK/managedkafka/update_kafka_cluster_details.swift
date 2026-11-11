import Foundation
import OCICommon

// MARK: - UpdateKafkaClusterDetails

public struct UpdateKafkaClusterDetails: Codable, Sendable {

    public var displayName: String?
    public var clientCertificateBundle: String?
    public var brokerShape: BrokerShape?
    public var clusterConfigId: String?
    public var clusterConfigVersion: Int?
    public var accessSubnets: [SubnetSet]?
    public var coordinationType: KafkaClusterCoordinationTypeEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, clientCertificateBundle, brokerShape, clusterConfigId, clusterConfigVersion, accessSubnets, coordinationType, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                clientCertificateBundle: String? = nil,
                brokerShape: BrokerShape? = nil,
                clusterConfigId: String? = nil,
                clusterConfigVersion: Int? = nil,
                accessSubnets: [SubnetSet]? = nil,
                coordinationType: KafkaClusterCoordinationTypeEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.clientCertificateBundle = clientCertificateBundle
        self.brokerShape = brokerShape
        self.clusterConfigId = clusterConfigId
        self.clusterConfigVersion = clusterConfigVersion
        self.accessSubnets = accessSubnets
        self.coordinationType = coordinationType
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKafkaClusterDetails: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterDetails()" }
}