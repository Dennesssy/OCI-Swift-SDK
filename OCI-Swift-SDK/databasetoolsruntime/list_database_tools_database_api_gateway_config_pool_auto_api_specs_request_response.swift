import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsRequest

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum?
    public var sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum?
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
                sortOrder: ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortOrderEnum? = nil,
                sortBy: ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsSortByEnum? = nil,
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

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsRequest: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsRequest()" }
}

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsResponse

public struct ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection: DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection = databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsResponse: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecsResponse()" }
}