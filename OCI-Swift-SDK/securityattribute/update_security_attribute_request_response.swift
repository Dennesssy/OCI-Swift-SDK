import Foundation

// MARK: - UpdateSecurityAttributeRequest

public struct UpdateSecurityAttributeRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var securityAttributeName: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSecurityAttributeDetails: UpdateSecurityAttributeDetails?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, securityAttributeName, ifMatch, opcRequestId, updateSecurityAttributeDetails
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                securityAttributeName: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSecurityAttributeDetails: UpdateSecurityAttributeDetails? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.securityAttributeName = securityAttributeName
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSecurityAttributeDetails = updateSecurityAttributeDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSecurityAttributeRequest: CustomStringConvertible {
    public var description: String { "UpdateSecurityAttributeRequest()" }
}

// MARK: - UpdateSecurityAttributeResponse

public struct UpdateSecurityAttributeResponse: Codable, Sendable {
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

extension UpdateSecurityAttributeResponse: CustomStringConvertible {
    public var description: String { "UpdateSecurityAttributeResponse()" }
}