import Foundation

// MARK: - GetKafkaClusterConfigRequest

public struct GetKafkaClusterConfigRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, opcRequestId
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterConfigRequest: CustomStringConvertible {
    public var description: String { "GetKafkaClusterConfigRequest()" }
}

// MARK: - GetKafkaClusterConfigResponse

public struct GetKafkaClusterConfigResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var kafkaClusterConfig: KafkaClusterConfig?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, kafkaClusterConfig
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                kafkaClusterConfig: KafkaClusterConfig? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.kafkaClusterConfig = kafkaClusterConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterConfigResponse: CustomStringConvertible {
    public var description: String { "GetKafkaClusterConfigResponse()" }
}