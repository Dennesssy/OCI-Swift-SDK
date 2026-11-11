import Foundation

// MARK: - DeleteSecurityAttributeRequest

public struct DeleteSecurityAttributeRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var securityAttributeName: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, securityAttributeName, ifMatch, opcRequestId
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                securityAttributeName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.securityAttributeName = securityAttributeName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSecurityAttributeRequest: CustomStringConvertible {
    public var description: String { "DeleteSecurityAttributeRequest()" }
}

// MARK: - DeleteSecurityAttributeResponse

public struct DeleteSecurityAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSecurityAttributeResponse: CustomStringConvertible {
    public var description: String { "DeleteSecurityAttributeResponse()" }
}