import Foundation
import OCICommon

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolRequest

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolRequest: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolRequest()" }
}

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolResponse

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPool: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPool
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPool: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPool = databaseToolsDatabaseApiGatewayConfigPool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolResponse: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolResponse()" }
}