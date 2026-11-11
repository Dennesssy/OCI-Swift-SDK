import Foundation

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesRequest

public struct ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesRequest: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesRequest: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesRequest()" }
}

// MARK: - ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesResponse

public struct ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var databaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection: DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, databaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                databaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection: DatabaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.databaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection = databaseToolsDatabaseApiGatewayConfigAdvancedPropertySummaryCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesResponse: CustomStringConvertible {
    public var description: String { "ListDatabaseToolsDatabaseApiGatewayConfigAdvancedPropertiesResponse()" }
}