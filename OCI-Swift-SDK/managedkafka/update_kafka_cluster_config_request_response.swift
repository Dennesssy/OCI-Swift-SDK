import Foundation

// MARK: - UpdateKafkaClusterConfigRequest

public struct UpdateKafkaClusterConfigRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateKafkaClusterConfigDetails: UpdateKafkaClusterConfigDetails?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, ifMatch, opcRequestId, updateKafkaClusterConfigDetails
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateKafkaClusterConfigDetails: UpdateKafkaClusterConfigDetails? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateKafkaClusterConfigDetails = updateKafkaClusterConfigDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateKafkaClusterConfigRequest: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterConfigRequest()" }
}

// MARK: - UpdateKafkaClusterConfigResponse

public struct UpdateKafkaClusterConfigResponse: Codable, Sendable {
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

extension UpdateKafkaClusterConfigResponse: CustomStringConvertible {
    public var description: String { "UpdateKafkaClusterConfigResponse()" }
}