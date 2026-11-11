import Foundation

// MARK: - UpdateKafkaClusterRequest

public struct UpdateKafkaClusterRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateKafkaClusterDetails: UpdateKafkaClusterDetails?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, ifMatch, opcRequestId, updateKafkaClusterDetails
    }

    public init(
                kafkaClusterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateKafkaClusterDetails: UpdateKafkaClusterDetails? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateKafkaClusterDetails = updateKafkaClusterDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKafkaClusterRequest: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterRequest()" }
}

// MARK: - UpdateKafkaClusterResponse

public struct UpdateKafkaClusterResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var kafkaCluster: KafkaCluster?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, kafkaCluster
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                kafkaCluster: KafkaCluster? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.kafkaCluster = kafkaCluster
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKafkaClusterResponse: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterResponse()" }
}