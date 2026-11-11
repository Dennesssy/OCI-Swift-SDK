import Foundation
import OCICommon

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalRequest

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var globalKey: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateDatabaseToolsDatabaseApiGatewayConfigGlobalDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, globalKey, opcRequestId, ifMatch, updateDatabaseToolsDatabaseApiGatewayConfigGlobalDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                globalKey: UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateDatabaseToolsDatabaseApiGatewayConfigGlobalDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.globalKey = globalKey
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateDatabaseToolsDatabaseApiGatewayConfigGlobalDetails = updateDatabaseToolsDatabaseApiGatewayConfigGlobalDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalRequest: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalRequest()" }
}

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalResponse

public struct UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalResponse: Codable, Sendable {
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

extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalResponse: CustomStringConvertible {
    public var description: String { "UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalResponse()" }
}