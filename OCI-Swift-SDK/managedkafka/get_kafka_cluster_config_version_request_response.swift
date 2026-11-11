import Foundation

// MARK: - GetKafkaClusterConfigVersionRequest

public struct GetKafkaClusterConfigVersionRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var versionNumber: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, versionNumber, opcRequestId
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                versionNumber: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.versionNumber = versionNumber
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterConfigVersionRequest: CustomStringConvertible {
    public var description: String { "GetKafkaClusterConfigVersionRequest()" }
}

// MARK: - GetKafkaClusterConfigVersionResponse

public struct GetKafkaClusterConfigVersionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var kafkaClusterConfigVersion: KafkaClusterConfigVersion?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, kafkaClusterConfigVersion
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                kafkaClusterConfigVersion: KafkaClusterConfigVersion? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.kafkaClusterConfigVersion = kafkaClusterConfigVersion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetKafkaClusterConfigVersionResponse: CustomStringConvertible {
    public var description: String { "GetKafkaClusterConfigVersionResponse()" }
}