import Foundation

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var autoApiSpecKey: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, autoApiSpecKey, ifMatch, opcRequestId
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                autoApiSpecKey: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.autoApiSpecKey = autoApiSpecKey
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest()" }
}

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: Codable, Sendable {
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

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse()" }
}