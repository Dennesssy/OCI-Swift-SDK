import Foundation

// MARK: - ListWorkRequestsRequest

public struct ListWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var resourceIdentifier: String?
    public var opcRequestId: String?
    public var sortOrder: ListWorkRequestsSortOrderEnum?
    public var sortBy: ListWorkRequestsSortByEnum?
    public var page: String?
    public var limit: Int?
    public var operationType: [OperationTypeEnum]?
    public var createdByPrincipalId: String?
    public var status: [OperationStatusEnum]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resourceIdentifier, opcRequestId, sortOrder, sortBy, page, limit, operationType, createdByPrincipalId, status
    }

    public init(
                compartmentId: String? = nil,
                resourceIdentifier: String? = nil,
                opcRequestId: String? = nil,
                sortOrder: ListWorkRequestsSortOrderEnum? = nil,
                sortBy: ListWorkRequestsSortByEnum? = nil,
                page: String? = nil,
                limit: Int? = nil,
                operationType: [OperationTypeEnum]? = nil,
                createdByPrincipalId: String? = nil,
                status: [OperationStatusEnum]? = nil
    ) {
        self.compartmentId = compartmentId
        self.resourceIdentifier = resourceIdentifier
        self.opcRequestId = opcRequestId
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.page = page
        self.limit = limit
        self.operationType = operationType
        self.createdByPrincipalId = createdByPrincipalId
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestsRequest()" }
}

// MARK: - ListWorkRequestsResponse

public struct ListWorkRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var workRequestCollection: WorkRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, workRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                workRequestCollection: WorkRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.workRequestCollection = workRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestsResponse()" }
}