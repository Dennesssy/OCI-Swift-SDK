import Foundation
import OCICommon

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var autoApiSpecKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, autoApiSpecKey, opcRequestId, ifMatch, updateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                autoApiSpecKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.autoApiSpecKey = autoApiSpecKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails = updateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest()" }
}

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec = databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse()" }
}