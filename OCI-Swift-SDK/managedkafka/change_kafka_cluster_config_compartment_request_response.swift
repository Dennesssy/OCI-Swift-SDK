import Foundation

// MARK: - ChangeKafkaClusterConfigCompartmentRequest

public struct ChangeKafkaClusterConfigCompartmentRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeKafkaClusterConfigCompartmentDetails: ChangeKafkaClusterConfigCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, ifMatch, opcRequestId, changeKafkaClusterConfigCompartmentDetails
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeKafkaClusterConfigCompartmentDetails: ChangeKafkaClusterConfigCompartmentDetails? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeKafkaClusterConfigCompartmentDetails = changeKafkaClusterConfigCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeKafkaClusterConfigCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeKafkaClusterConfigCompartmentRequest()" }
}

// MARK: - ChangeKafkaClusterConfigCompartmentResponse

public struct ChangeKafkaClusterConfigCompartmentResponse: Codable, Sendable {
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

extension ChangeKafkaClusterConfigCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeKafkaClusterConfigCompartmentResponse()" }
}