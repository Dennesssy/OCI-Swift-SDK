import Foundation
import OCICommon

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolRequest

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateDatabaseToolsDatabaseApiGatewayConfigPoolDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, opcRequestId, ifMatch, updateDatabaseToolsDatabaseApiGatewayConfigPoolDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateDatabaseToolsDatabaseApiGatewayConfigPoolDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateDatabaseToolsDatabaseApiGatewayConfigPoolDetails = updateDatabaseToolsDatabaseApiGatewayConfigPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolRequest: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolRequest()" }
}

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolResponse

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolResponse: Codable, Sendable {
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

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolResponse: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolResponse()" }
}