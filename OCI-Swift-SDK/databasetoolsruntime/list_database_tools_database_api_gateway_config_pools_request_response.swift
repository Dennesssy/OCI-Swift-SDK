import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolsRequest

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolsRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum?
    public var sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortOrderEnum? = nil,
                sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.displayName = displayName
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolsRequest: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolsRequest()" }
}

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolsResponse

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolCollection: DatabaseToolsDatabaseApiGatewayConfigPoolCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, databaseToolsDatabaseApiGatewayConfigPoolCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolCollection: DatabaseToolsDatabaseApiGatewayConfigPoolCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.databaseToolsDatabaseApiGatewayConfigPoolCollection = databaseToolsDatabaseApiGatewayConfigPoolCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolsResponse: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolsResponse()" }
}