import Foundation

// MARK: - ChangeKafkaClusterCompartmentRequest

public struct ChangeKafkaClusterCompartmentRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeKafkaClusterCompartmentDetails: ChangeKafkaClusterCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, ifMatch, opcRequestId, changeKafkaClusterCompartmentDetails
    }

    public init(
                kafkaClusterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeKafkaClusterCompartmentDetails: ChangeKafkaClusterCompartmentDetails? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeKafkaClusterCompartmentDetails = changeKafkaClusterCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeKafkaClusterCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeKafkaClusterCompartmentRequest()" }
}

// MARK: - ChangeKafkaClusterCompartmentResponse

public struct ChangeKafkaClusterCompartmentResponse: Codable, Sendable {
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

extension ChangeKafkaClusterCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeKafkaClusterCompartmentResponse()" }
}