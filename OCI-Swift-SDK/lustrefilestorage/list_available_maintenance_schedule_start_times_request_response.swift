import Foundation

// MARK: - ListAvailableMaintenanceScheduleStartTimesRequest

public struct ListAvailableMaintenanceScheduleStartTimesRequest: Codable, Sendable {
    public var id: String?
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var dayOfWeek: ListAvailableMaintenanceScheduleStartTimesDayOfWeekEnum?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListAvailableMaintenanceScheduleStartTimesSortByEnum?
    public var sortOrder: ListAvailableMaintenanceScheduleStartTimesSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, availabilityDomain, dayOfWeek, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                dayOfWeek: ListAvailableMaintenanceScheduleStartTimesDayOfWeekEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListAvailableMaintenanceScheduleStartTimesSortByEnum? = nil,
                sortOrder: ListAvailableMaintenanceScheduleStartTimesSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.dayOfWeek = dayOfWeek
        self.limit = limit
        self.page = page
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailableMaintenanceScheduleStartTimesRequest: CustomStringConvertible {
    public var description: String { "ListAvailableMaintenanceScheduleStartTimesRequest()" }
}

// MARK: - ListAvailableMaintenanceScheduleStartTimesResponse

public struct ListAvailableMaintenanceScheduleStartTimesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var availableMaintenanceScheduleStartTimeCollection: AvailableMaintenanceScheduleStartTimeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, availableMaintenanceScheduleStartTimeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                availableMaintenanceScheduleStartTimeCollection: AvailableMaintenanceScheduleStartTimeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.availableMaintenanceScheduleStartTimeCollection = availableMaintenanceScheduleStartTimeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAvailableMaintenanceScheduleStartTimesResponse: CustomStringConvertible {
    public var description: String { "ListAvailableMaintenanceScheduleStartTimesResponse()" }
}