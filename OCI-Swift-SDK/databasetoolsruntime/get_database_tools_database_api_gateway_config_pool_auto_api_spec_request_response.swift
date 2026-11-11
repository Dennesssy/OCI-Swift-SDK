import Foundation
import OCICommon

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var autoApiSpecKey: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, autoApiSpecKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                autoApiSpecKey: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.autoApiSpecKey = autoApiSpecKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest()" }
}

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse

public struct GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: Codable, Sendable {
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

extension GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse()" }
}