import Foundation
import OCICommon

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigGlobalRequest

public struct GetDatabaseToolsDatabaseApiGatewayConfigGlobalRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var globalKey: GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, globalKey, opcRequestId, ifMatch
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                globalKey: GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.globalKey = globalKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigGlobalRequest: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigGlobalRequest()" }
}

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigGlobalResponse

public struct GetDatabaseToolsDatabaseApiGatewayConfigGlobalResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigGlobal: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigGlobal
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigGlobal: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigGlobal = databaseToolsDatabaseApiGatewayConfigGlobal
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigGlobalResponse: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigGlobalResponse()" }
}