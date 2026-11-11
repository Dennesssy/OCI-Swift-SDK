import Foundation

// MARK: - GetSecurityAttributeNamespaceRequest

public struct GetSecurityAttributeNamespaceRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, opcRequestId
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeNamespaceRequest: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeNamespaceRequest()" }
}

// MARK: - GetSecurityAttributeNamespaceResponse

public struct GetSecurityAttributeNamespaceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var securityAttributeNamespace: SecurityAttributeNamespace?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, securityAttributeNamespace
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                securityAttributeNamespace: SecurityAttributeNamespace? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.securityAttributeNamespace = securityAttributeNamespace
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeNamespaceResponse: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeNamespaceResponse()" }
}