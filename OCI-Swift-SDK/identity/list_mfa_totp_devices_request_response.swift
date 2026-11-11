import Foundation

// MARK: - ListMfaTotpDevicesRequest

public struct ListMfaTotpDevicesRequest: Codable, Sendable {
    public var userId: String?
    public var page: String?
    public var limit: Int?
    public var sortBy: ListMfaTotpDevicesSortByEnum?
    public var sortOrder: ListMfaTotpDevicesSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, page, limit, sortBy, sortOrder, opcRequestId
    }

    public init(
                userId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                sortBy: ListMfaTotpDevicesSortByEnum? = nil,
                sortOrder: ListMfaTotpDevicesSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.page = page
        self.limit = limit
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMfaTotpDevicesRequest: CustomStringConvertible {
    public var description: String { "ListMfaTotpDevicesRequest()" }
}

// MARK: - ListMfaTotpDevicesResponse

public struct ListMfaTotpDevicesResponse: Codable, Sendable {
    public var items: [MfaTotpDeviceSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [MfaTotpDeviceSummary]? = nil,
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

extension ListMfaTotpDevicesResponse: CustomStringConvertible {
    public var description: String { "ListMfaTotpDevicesResponse()" }
}