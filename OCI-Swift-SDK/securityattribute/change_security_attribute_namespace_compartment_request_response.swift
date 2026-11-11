import Foundation

// MARK: - ChangeSecurityAttributeNamespaceCompartmentRequest

public struct ChangeSecurityAttributeNamespaceCompartmentRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeSecurityAttributeNamespaceCompartmentDetails: ChangeSecurityAttributeNamespaceCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, ifMatch, opcRequestId, changeSecurityAttributeNamespaceCompartmentDetails
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeSecurityAttributeNamespaceCompartmentDetails: ChangeSecurityAttributeNamespaceCompartmentDetails? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeSecurityAttributeNamespaceCompartmentDetails = changeSecurityAttributeNamespaceCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeSecurityAttributeNamespaceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeSecurityAttributeNamespaceCompartmentRequest()" }
}

// MARK: - ChangeSecurityAttributeNamespaceCompartmentResponse

public struct ChangeSecurityAttributeNamespaceCompartmentResponse: Codable, Sendable {
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

extension ChangeSecurityAttributeNamespaceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeSecurityAttributeNamespaceCompartmentResponse()" }
}