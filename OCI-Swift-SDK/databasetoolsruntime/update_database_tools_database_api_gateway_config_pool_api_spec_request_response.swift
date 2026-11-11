import Foundation
import OCICommon

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var apiSpecKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, apiSpecKey, opcRequestId, ifMatch, updateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                apiSpecKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.apiSpecKey = apiSpecKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails = updateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest()" }
}

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolApiSpec: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPoolApiSpec
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolApiSpec: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPoolApiSpec = databaseToolsDatabaseApiGatewayConfigPoolApiSpec
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse()" }
}