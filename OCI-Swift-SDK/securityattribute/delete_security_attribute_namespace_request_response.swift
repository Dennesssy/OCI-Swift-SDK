import Foundation

// MARK: - DeleteSecurityAttributeNamespaceRequest

public struct DeleteSecurityAttributeNamespaceRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, ifMatch, opcRequestId
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSecurityAttributeNamespaceRequest: CustomStringConvertible {
    public var description: String { "DeleteSecurityAttributeNamespaceRequest()" }
}

// MARK: - DeleteSecurityAttributeNamespaceResponse

public struct DeleteSecurityAttributeNamespaceResponse: Codable, Sendable {
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

extension DeleteSecurityAttributeNamespaceResponse: CustomStringConvertible {
    public var description: String { "DeleteSecurityAttributeNamespaceResponse()" }
}