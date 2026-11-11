import Foundation

// MARK: - ListDatabasesRequest

public struct ListDatabasesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: DblmVulnerabilityLifecycleStateEnum?
    public var databaseRelease: String?
    public var databaseType: ListDatabasesDatabaseTypeEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDatabasesSortOrderEnum?
    public var sortBy: ListDatabasesSortByEnum?
    public var imageId: String?
    public var opcRequestId: String?
    public var displayName: String?
    public var drifterPatchId: Int?
    public var imageCompliance: ListDatabasesImageComplianceEnum?
    public var severityType: [ResourcesSeveritiesEnum]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, databaseRelease, databaseType, limit, page, sortOrder, sortBy, imageId, opcRequestId, displayName, drifterPatchId, imageCompliance, severityType
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: DblmVulnerabilityLifecycleStateEnum? = nil,
                databaseRelease: String? = nil,
                databaseType: ListDatabasesDatabaseTypeEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDatabasesSortOrderEnum? = nil,
                sortBy: ListDatabasesSortByEnum? = nil,
                imageId: String? = nil,
                opcRequestId: String? = nil,
                displayName: String? = nil,
                drifterPatchId: Int? = nil,
                imageCompliance: ListDatabasesImageComplianceEnum? = nil,
                severityType: [ResourcesSeveritiesEnum]? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.databaseRelease = databaseRelease
        self.databaseType = databaseType
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.imageId = imageId
        self.opcRequestId = opcRequestId
        self.displayName = displayName
        self.drifterPatchId = drifterPatchId
        self.imageCompliance = imageCompliance
        self.severityType = severityType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabasesRequest: CustomStringConvertible {
    public var description: String { "ListDatabasesRequest()" }
}

// MARK: - ListDatabasesResponse

public struct ListDatabasesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var patchDatabasesCollection: PatchDatabasesCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, patchDatabasesCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                patchDatabasesCollection: PatchDatabasesCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.patchDatabasesCollection = patchDatabasesCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabasesResponse: CustomStringConvertible {
    public var description: String { "ListDatabasesResponse()" }
}