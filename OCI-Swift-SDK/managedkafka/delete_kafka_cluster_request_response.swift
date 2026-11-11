import Foundation

// MARK: - DeleteKafkaClusterRequest

public struct DeleteKafkaClusterRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, ifMatch, opcRequestId
    }

    public init(
                kafkaClusterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKafkaClusterRequest: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterRequest()" }
}

// MARK: - DeleteKafkaClusterResponse

public struct DeleteKafkaClusterResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteKafkaClusterResponse: CustomStringConvertible {
    public var description: String { "DeleteKafkaClusterResponse()" }
}