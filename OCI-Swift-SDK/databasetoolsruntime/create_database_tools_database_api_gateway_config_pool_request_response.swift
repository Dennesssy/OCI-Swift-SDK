import Foundation
import OCICommon

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolRequest

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var opcRequestId: String?
    public var createDatabaseToolsDatabaseApiGatewayConfigPoolDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, opcRequestId, createDatabaseToolsDatabaseApiGatewayConfigPoolDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                opcRequestId: String? = nil,
                createDatabaseToolsDatabaseApiGatewayConfigPoolDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.opcRequestId = opcRequestId
        self.createDatabaseToolsDatabaseApiGatewayConfigPoolDetails = createDatabaseToolsDatabaseApiGatewayConfigPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolRequest: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolRequest()" }
}

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolResponse

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPool: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPool
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPool: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPool = databaseToolsDatabaseApiGatewayConfigPool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolResponse: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolResponse()" }
}