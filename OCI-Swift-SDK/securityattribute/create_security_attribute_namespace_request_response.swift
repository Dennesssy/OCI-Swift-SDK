import Foundation

// MARK: - CreateSecurityAttributeNamespaceRequest

public struct CreateSecurityAttributeNamespaceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createSecurityAttributeNamespaceDetails: CreateSecurityAttributeNamespaceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createSecurityAttributeNamespaceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createSecurityAttributeNamespaceDetails: CreateSecurityAttributeNamespaceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createSecurityAttributeNamespaceDetails = createSecurityAttributeNamespaceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSecurityAttributeNamespaceRequest: CustomStringConvertible {
    public var description: String { "CreateSecurityAttributeNamespaceRequest()" }
}

// MARK: - CreateSecurityAttributeNamespaceResponse

public struct CreateSecurityAttributeNamespaceResponse: Codable, Sendable {
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

extension CreateSecurityAttributeNamespaceResponse: CustomStringConvertible {
    public var description: String { "CreateSecurityAttributeNamespaceResponse()" }
}