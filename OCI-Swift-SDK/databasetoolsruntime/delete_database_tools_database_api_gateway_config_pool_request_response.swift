import Foundation

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolRequest

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, ifMatch, opcRequestId
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolRequest: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolRequest()" }
}

// MARK: - DeleteDatabaseToolsDatabaseApiGatewayConfigPoolResponse

public struct DeleteDatabaseToolsDatabaseApiGatewayConfigPoolResponse: Codable, Sendable {
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

extension DeleteDatabaseToolsDatabaseApiGatewayConfigPoolResponse: CustomStringConvertible {
    public var description: String { "DeleteDatabaseToolsDatabaseApiGatewayConfigPoolResponse()" }
}