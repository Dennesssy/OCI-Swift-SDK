import Foundation

// MARK: - CreateIdpGroupMappingRequest

public struct CreateIdpGroupMappingRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var opcRequestId: String?
    public var createIdpGroupMappingDetails: CreateIdpGroupMappingDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, opcRequestId, createIdpGroupMappingDetails, opcRetryToken
    }

    public init(
                identityProviderId: String? = nil,
                opcRequestId: String? = nil,
                createIdpGroupMappingDetails: CreateIdpGroupMappingDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.opcRequestId = opcRequestId
        self.createIdpGroupMappingDetails = createIdpGroupMappingDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIdpGroupMappingRequest: CustomStringConvertible {
    public var description: String { "CreateIdpGroupMappingRequest()" }
}

// MARK: - CreateIdpGroupMappingResponse

public struct CreateIdpGroupMappingResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var idpGroupMapping: IdpGroupMapping?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, idpGroupMapping
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                idpGroupMapping: IdpGroupMapping? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.idpGroupMapping = idpGroupMapping
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateIdpGroupMappingResponse: CustomStringConvertible {
    public var description: String { "CreateIdpGroupMappingResponse()" }
}