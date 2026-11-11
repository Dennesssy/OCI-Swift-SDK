import Foundation

// MARK: - ListIdpGroupMappingsRequest

public struct ListIdpGroupMappingsRequest: Codable, Sendable {
    public var identityProviderId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case identityProviderId, page, limit, opcRequestId
    }

    public init(
                identityProviderId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.identityProviderId = identityProviderId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIdpGroupMappingsRequest: CustomStringConvertible {
    public var description: String { "ListIdpGroupMappingsRequest()" }
}

// MARK: - ListIdpGroupMappingsResponse

public struct ListIdpGroupMappingsResponse: Codable, Sendable {
    public var items: [IdpGroupMapping]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [IdpGroupMapping]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListIdpGroupMappingsResponse: CustomStringConvertible {
    public var description: String { "ListIdpGroupMappingsResponse()" }
}