import Foundation

// MARK: - ListAddonOptionsRequest

public struct ListAddonOptionsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var name: String?
    public var sortOrder: ListAddonOptionsSortOrderEnum?
    public var sortBy: ListAddonOptionsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, compartmentId, limit, page, name, sortOrder, sortBy
    }

    public init(
                opcRequestId: String? = nil,
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                name: String? = nil,
                sortOrder: ListAddonOptionsSortOrderEnum? = nil,
                sortBy: ListAddonOptionsSortByEnum? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.name = name
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAddonOptionsRequest: CustomStringConvertible {
    public var description: String { "ListAddonOptionsRequest()" }
}

// MARK: - ListAddonOptionsResponse

public struct ListAddonOptionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var addonOptionCollection: AddonOptionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, addonOptionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                addonOptionCollection: AddonOptionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.addonOptionCollection = addonOptionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAddonOptionsResponse: CustomStringConvertible {
    public var description: String { "ListAddonOptionsResponse()" }
}