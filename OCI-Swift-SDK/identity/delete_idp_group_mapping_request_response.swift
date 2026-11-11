import Foundation

// MARK: - DeleteIdpGroupMappingRequest

public struct DeleteIdpGroupMappingRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var mappingId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, mappingId, ifMatch, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                mappingId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.mappingId = mappingId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIdpGroupMappingRequest: CustomStringConvertible {
    public var description: String { "DeleteIdpGroupMappingRequest()" }
}

// MARK: - DeleteIdpGroupMappingResponse

public struct DeleteIdpGroupMappingResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteIdpGroupMappingResponse: CustomStringConvertible {
    public var description: String { "DeleteIdpGroupMappingResponse()" }
}