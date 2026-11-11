import Foundation

// MARK: - DeleteKafkaClusterConfigRequest

public struct DeleteKafkaClusterConfigRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, ifMatch, opcRequestId
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKafkaClusterConfigRequest: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterConfigRequest()" }
}

// MARK: - DeleteKafkaClusterConfigResponse

public struct DeleteKafkaClusterConfigResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKafkaClusterConfigResponse: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterConfigResponse()" }
}