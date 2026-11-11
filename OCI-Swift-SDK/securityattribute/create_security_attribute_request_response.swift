import Foundation

// MARK: - CreateSecurityAttributeRequest

public struct CreateSecurityAttributeRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var opcRequestId: String?
    public var createSecurityAttributeDetails: CreateSecurityAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, opcRequestId, createSecurityAttributeDetails
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                opcRequestId: String? = nil,
                createSecurityAttributeDetails: CreateSecurityAttributeDetails? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.opcRequestId = opcRequestId
        self.createSecurityAttributeDetails = createSecurityAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSecurityAttributeRequest: CustomStringConvertible {
    public var description: String { "CreateSecurityAttributeRequest()" }
}

// MARK: - CreateSecurityAttributeResponse

public struct CreateSecurityAttributeResponse: Codable, Sendable {
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

extension CreateSecurityAttributeResponse: CustomStringConvertible {
    public var description: String { "CreateSecurityAttributeResponse()" }
}