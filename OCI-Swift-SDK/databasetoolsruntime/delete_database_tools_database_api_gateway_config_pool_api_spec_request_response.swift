import Foundation

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var apiSpecKey: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, apiSpecKey, ifMatch, opcRequestId
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                apiSpecKey: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.apiSpecKey = apiSpecKey
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest()" }
}

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: Codable, Sendable {
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

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse()" }
}