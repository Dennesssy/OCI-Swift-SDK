import Foundation

// MARK: - ListMaintenanceRunsRequest

public struct ListMaintenanceRunsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var infrastructureId: String?
    public var targetResourceType: ListMaintenanceRunsTargetResourceTypeEnum?
    public var maintenanceType: ListMaintenanceRunsMaintenanceTypeEnum?
    public var lifecycleState: ListMaintenanceRunsLifecycleStateEnum?
    public var maintenanceSubtype: ListMaintenanceRunsMaintenanceSubtypeEnum?
    public var timeAcceptedLessThanOrEqualTo: Date?
    public var timeAcceptedGreaterThanOrEqualTo: Date?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListMaintenanceRunsSortByEnum?
    public var sortOrder: ListMaintenanceRunsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, infrastructureId, targetResourceType, maintenanceType, lifecycleState, maintenanceSubtype, timeAcceptedLessThanOrEqualTo, timeAcceptedGreaterThanOrEqualTo, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                infrastructureId: String? = nil,
                targetResourceType: ListMaintenanceRunsTargetResourceTypeEnum? = nil,
                maintenanceType: ListMaintenanceRunsMaintenanceTypeEnum? = nil,
                lifecycleState: ListMaintenanceRunsLifecycleStateEnum? = nil,
                maintenanceSubtype: ListMaintenanceRunsMaintenanceSubtypeEnum? = nil,
                timeAcceptedLessThanOrEqualTo: Date? = nil,
                timeAcceptedGreaterThanOrEqualTo: Date? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListMaintenanceRunsSortByEnum? = nil,
                sortOrder: ListMaintenanceRunsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.infrastructureId = infrastructureId
        self.targetResourceType = targetResourceType
        self.maintenanceType = maintenanceType
        self.lifecycleState = lifecycleState
        self.maintenanceSubtype = maintenanceSubtype
        self.timeAcceptedLessThanOrEqualTo = timeAcceptedLessThanOrEqualTo
        self.timeAcceptedGreaterThanOrEqualTo = timeAcceptedGreaterThanOrEqualTo
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

extension ListMaintenanceRunsRequest: CustomStringConvertible {
    public var description: String { "ListMaintenanceRunsRequest()" }
}

// MARK: - ListMaintenanceRunsResponse

public struct ListMaintenanceRunsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var maintenanceRunCollection: MaintenanceRunCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, maintenanceRunCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                maintenanceRunCollection: MaintenanceRunCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.maintenanceRunCollection = maintenanceRunCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMaintenanceRunsResponse: CustomStringConvertible {
    public var description: String { "ListMaintenanceRunsResponse()" }
}