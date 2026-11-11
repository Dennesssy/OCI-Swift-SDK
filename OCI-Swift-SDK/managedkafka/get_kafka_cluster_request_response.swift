import Foundation

// MARK: - GetKafkaClusterRequest

public struct GetKafkaClusterRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, opcRequestId
    }

    public init(
                kafkaClusterId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterRequest: CustomStringConvertible {
    public var description: String { "GetKafkaClusterRequest()" }
}

// MARK: - GetKafkaClusterResponse

public struct GetKafkaClusterResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var kafkaCluster: KafkaCluster?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, kafkaCluster
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                kafkaCluster: KafkaCluster? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.kafkaCluster = kafkaCluster
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterResponse: CustomStringConvertible {
    public var description: String { "GetKafkaClusterResponse()" }
}