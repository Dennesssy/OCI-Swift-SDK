import Foundation

// MARK: - ListAvailableOverrideMaintenanceStartTimesRequest

public struct ListAvailableOverrideMaintenanceStartTimesRequest: Codable, Sendable {
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListAvailableOverrideMaintenanceStartTimesSortByEnum?
    public var sortOrder: ListAvailableOverrideMaintenanceStartTimesSortOrderEnum?
    public var date: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, limit, page, sortBy, sortOrder, date, opcRequestId
    }

    public init(
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListAvailableOverrideMaintenanceStartTimesSortByEnum? = nil,
                sortOrder: ListAvailableOverrideMaintenanceStartTimesSortOrderEnum? = nil,
                date: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.limit = limit
        self.page = page
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.date = date
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailableOverrideMaintenanceStartTimesRequest: CustomStringConvertible {
    public var description: String { "ListAvailableOverrideMaintenanceStartTimesRequest()" }
}

// MARK: - ListAvailableOverrideMaintenanceStartTimesResponse

public struct ListAvailableOverrideMaintenanceStartTimesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var availableOverrideMaintenanceStartTimeCollection: AvailableOverrideMaintenanceStartTimeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, availableOverrideMaintenanceStartTimeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                availableOverrideMaintenanceStartTimeCollection: AvailableOverrideMaintenanceStartTimeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.availableOverrideMaintenanceStartTimeCollection = availableOverrideMaintenanceStartTimeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailableOverrideMaintenanceStartTimesResponse: CustomStringConvertible {
    public var description: String { "ListAvailableOverrideMaintenanceStartTimesResponse()" }
}