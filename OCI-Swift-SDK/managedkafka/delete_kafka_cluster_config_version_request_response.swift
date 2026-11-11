import Foundation

// MARK: - DeleteKafkaClusterConfigVersionRequest

public struct DeleteKafkaClusterConfigVersionRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var versionNumber: Int?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, versionNumber, ifMatch, opcRequestId
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                versionNumber: Int? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.versionNumber = versionNumber
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKafkaClusterConfigVersionRequest: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterConfigVersionRequest()" }
}

// MARK: - DeleteKafkaClusterConfigVersionResponse

public struct DeleteKafkaClusterConfigVersionResponse: Codable, Sendable {
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

extension DeleteKafkaClusterConfigVersionResponse: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterConfigVersionResponse()" }
}