import Foundation

// MARK: - ChangeAgentCompartmentRequest

public struct ChangeAgentCompartmentRequest: Codable, Sendable {
    public var agentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeAgentCompartmentDetails: ChangeAgentCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case agentId, ifMatch, opcRequestId, changeAgentCompartmentDetails
    }

    public init(
                agentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeAgentCompartmentDetails: ChangeAgentCompartmentDetails? = nil
    ) {
        self.agentId = agentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeAgentCompartmentDetails = changeAgentCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeAgentCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeAgentCompartmentRequest()" }
}

// MARK: - ChangeAgentCompartmentResponse

public struct ChangeAgentCompartmentResponse: Codable, Sendable {
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

extension ChangeAgentCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeAgentCompartmentResponse()" }
}