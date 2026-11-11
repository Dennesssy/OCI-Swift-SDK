import Foundation

// MARK: - ListMaintenanceExecutionsRequest

public struct ListMaintenanceExecutionsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var infrastructureId: String?
    public var targetResourceType: ListMaintenanceExecutionsTargetResourceTypeEnum?
    public var maintenanceType: ListMaintenanceExecutionsMaintenanceTypeEnum?
    public var maintenanceRunId: String?
    public var lifecycleState: ListMaintenanceExecutionsLifecycleStateEnum?
    public var maintenanceSubtype: ListMaintenanceExecutionsMaintenanceSubtypeEnum?
    public var timeAcceptedLessThanOrEqualTo: Date?
    public var timeAcceptedGreaterThanOrEqualTo: Date?
    public var type: ListMaintenanceExecutionsTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListMaintenanceExecutionsSortByEnum?
    public var sortOrder: ListMaintenanceExecutionsSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, infrastructureId, targetResourceType, maintenanceType, maintenanceRunId, lifecycleState, maintenanceSubtype, timeAcceptedLessThanOrEqualTo, timeAcceptedGreaterThanOrEqualTo, type, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                infrastructureId: String? = nil,
                targetResourceType: ListMaintenanceExecutionsTargetResourceTypeEnum? = nil,
                maintenanceType: ListMaintenanceExecutionsMaintenanceTypeEnum? = nil,
                maintenanceRunId: String? = nil,
                lifecycleState: ListMaintenanceExecutionsLifecycleStateEnum? = nil,
                maintenanceSubtype: ListMaintenanceExecutionsMaintenanceSubtypeEnum? = nil,
                timeAcceptedLessThanOrEqualTo: Date? = nil,
                timeAcceptedGreaterThanOrEqualTo: Date? = nil,
                type: ListMaintenanceExecutionsTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListMaintenanceExecutionsSortByEnum? = nil,
                sortOrder: ListMaintenanceExecutionsSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.infrastructureId = infrastructureId
        self.targetResourceType = targetResourceType
        self.maintenanceType = maintenanceType
        self.maintenanceRunId = maintenanceRunId
        self.lifecycleState = lifecycleState
        self.maintenanceSubtype = maintenanceSubtype
        self.timeAcceptedLessThanOrEqualTo = timeAcceptedLessThanOrEqualTo
        self.timeAcceptedGreaterThanOrEqualTo = timeAcceptedGreaterThanOrEqualTo
        self.type = type
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

extension ListMaintenanceExecutionsRequest: CustomStringConvertible {
    public var description: String { "ListMaintenanceExecutionsRequest()" }
}

// MARK: - ListMaintenanceExecutionsResponse

public struct ListMaintenanceExecutionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var maintenanceExecutionCollection: MaintenanceExecutionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, maintenanceExecutionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                maintenanceExecutionCollection: MaintenanceExecutionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.maintenanceExecutionCollection = maintenanceExecutionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListMaintenanceExecutionsResponse: CustomStringConvertible {
    public var description: String { "ListMaintenanceExecutionsResponse()" }
}