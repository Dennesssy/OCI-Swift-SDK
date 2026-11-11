import Foundation

// MARK: - UpdateSecurityAttributeNamespaceRequest

public struct UpdateSecurityAttributeNamespaceRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSecurityAttributeNamespaceDetails: UpdateSecurityAttributeNamespaceDetails?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, ifMatch, opcRequestId, updateSecurityAttributeNamespaceDetails
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSecurityAttributeNamespaceDetails: UpdateSecurityAttributeNamespaceDetails? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSecurityAttributeNamespaceDetails = updateSecurityAttributeNamespaceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSecurityAttributeNamespaceRequest: CustomStringConvertible {
    public var description: String { "UpdateSecurityAttributeNamespaceRequest()" }
}

// MARK: - UpdateSecurityAttributeNamespaceResponse

public struct UpdateSecurityAttributeNamespaceResponse: Codable, Sendable {
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

extension UpdateSecurityAttributeNamespaceResponse: CustomStringConvertible {
    public var description: String { "UpdateSecurityAttributeNamespaceResponse()" }
}