import Foundation

// MARK: - CascadingDeleteSecurityAttributeNamespaceRequest

public struct CascadingDeleteSecurityAttributeNamespaceRequest: Codable, Sendable {
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

extension CascadingDeleteSecurityAttributeNamespaceRequest: CustomStringConvertible {
    public var description: String { "CascadingDeleteSecurityAttributeNamespaceRequest()" }
}

// MARK: - CascadingDeleteSecurityAttributeNamespaceResponse

public struct CascadingDeleteSecurityAttributeNamespaceResponse: Codable, Sendable {
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

extension CascadingDeleteSecurityAttributeNamespaceResponse: CustomStringConvertible {
    public var description: String { "CascadingDeleteSecurityAttributeNamespaceResponse()" }
}