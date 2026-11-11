import Foundation

// MARK: - UpdateIdpGroupMappingRequest

public struct UpdateIdpGroupMappingRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var mappingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateIdpGroupMappingDetails: UpdateIdpGroupMappingDetails?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, mappingId, ifMatch, opcRequestId, updateIdpGroupMappingDetails
    }

    public init(
                identityProviderId: String? = nil,
                mappingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateIdpGroupMappingDetails: UpdateIdpGroupMappingDetails? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.mappingId = mappingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateIdpGroupMappingDetails = updateIdpGroupMappingDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateIdpGroupMappingRequest: CustomStringConvertible {
    public var description: String { "UpdateIdpGroupMappingRequest()" }
}

// MARK: - UpdateIdpGroupMappingResponse

public struct UpdateIdpGroupMappingResponse: Codable, Sendable {
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

extension UpdateIdpGroupMappingResponse: CustomStringConvertible {
    public var description: String { "UpdateIdpGroupMappingResponse()" }
}