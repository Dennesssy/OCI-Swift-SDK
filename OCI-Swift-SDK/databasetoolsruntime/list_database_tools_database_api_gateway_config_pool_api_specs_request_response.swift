import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsRequest

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum?
    public var sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortOrderEnum? = nil,
                sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
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

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsRequest: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsRequest()" }
}

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsResponse

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection: DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, databaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection: DatabaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.databaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection = databaseToolsDatabaseApiGatewayConfigPoolApiSpecCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsResponse: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecsResponse()" }
}