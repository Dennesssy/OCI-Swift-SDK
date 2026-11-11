import Foundation

// MARK: - GetSecurityAttributeRequest

public struct GetSecurityAttributeRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var securityAttributeName: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, securityAttributeName, opcRequestId
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                securityAttributeName: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.securityAttributeName = securityAttributeName
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeRequest: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeRequest()" }
}

// MARK: - GetSecurityAttributeResponse

public struct GetSecurityAttributeResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var securityAttribute: SecurityAttribute?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, securityAttribute
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                securityAttribute: SecurityAttribute? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.securityAttribute = securityAttribute
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSecurityAttributeResponse: CustomStringConvertible {
    public var description: String { "GetSecurityAttributeResponse()" }
}