import Foundation
import OCICommon

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var apiSpecKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, apiSpecKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                apiSpecKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.apiSpecKey = apiSpecKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest()" }
}

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: Codable, Sendable {
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

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse()" }
}