import Foundation

// MARK: - ListVulnerabilitiesRequest

public struct ListVulnerabilitiesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var limit: Int?
    public var page: String?
    public var displayName: String?
    public var sortOrder: ListVulnerabilitiesSortOrderEnum?
    public var sortBy: ListVulnerabilitiesSortByEnum?
    public var opcRequestId: String?
    public var lifecycleState: DblmVulnerabilityLifecycleStateEnum?
    public var databaseRelease: String?
    public var resourceId: String?
    public var severityType: [VulnerabilityRiskLevelEnum]?
    public var searchBy: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, limit, page, displayName, sortOrder, sortBy, opcRequestId, lifecycleState, databaseRelease, resourceId, severityType, searchBy
    }

    public init(
                compartmentId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                displayName: String? = nil,
                sortOrder: ListVulnerabilitiesSortOrderEnum? = nil,
                sortBy: ListVulnerabilitiesSortByEnum? = nil,
                opcRequestId: String? = nil,
                lifecycleState: DblmVulnerabilityLifecycleStateEnum? = nil,
                databaseRelease: String? = nil,
                resourceId: String? = nil,
                severityType: [VulnerabilityRiskLevelEnum]? = nil,
                searchBy: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.limit = limit
        self.page = page
        self.displayName = displayName
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.lifecycleState = lifecycleState
        self.databaseRelease = databaseRelease
        self.resourceId = resourceId
        self.severityType = severityType
        self.searchBy = searchBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVulnerabilitiesRequest: CustomStringConvertible {
    public var description: String { "ListVulnerabilitiesRequest()" }
}

// MARK: - ListVulnerabilitiesResponse

public struct ListVulnerabilitiesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var vulnerabilityCollection: VulnerabilityCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, vulnerabilityCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                vulnerabilityCollection: VulnerabilityCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.vulnerabilityCollection = vulnerabilityCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVulnerabilitiesResponse: CustomStringConvertible {
    public var description: String { "ListVulnerabilitiesResponse()" }
}