import Foundation

// MARK: - GetIdpGroupMappingRequest

public struct GetIdpGroupMappingRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var mappingId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, mappingId, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                mappingId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.mappingId = mappingId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetIdpGroupMappingRequest: CustomStringConvertible {
    public var description: String { "GetIdpGroupMappingRequest()" }
}

// MARK: - GetIdpGroupMappingResponse

public struct GetIdpGroupMappingResponse: Codable, Sendable {
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

extension GetIdpGroupMappingResponse: CustomStringConvertible {
    public var description: String { "GetIdpGroupMappingResponse()" }
}