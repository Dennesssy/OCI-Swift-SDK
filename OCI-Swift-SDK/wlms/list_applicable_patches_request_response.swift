import Foundation

// MARK: - ListApplicablePatchesRequest

public struct ListApplicablePatchesRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListApplicablePatchesSortOrderEnum?
    public var sortBy: ListApplicablePatchesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                wlsDomainId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListApplicablePatchesSortOrderEnum? = nil,
                sortBy: ListApplicablePatchesSortByEnum? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApplicablePatchesRequest: CustomStringConvertible {
    public var description: String { "ListApplicablePatchesRequest()" }
}

// MARK: - ListApplicablePatchesResponse

public struct ListApplicablePatchesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var applicablePatchCollection: ApplicablePatchCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, applicablePatchCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                applicablePatchCollection: ApplicablePatchCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.applicablePatchCollection = applicablePatchCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListApplicablePatchesResponse: CustomStringConvertible {
    public var description: String { "ListApplicablePatchesResponse()" }
}