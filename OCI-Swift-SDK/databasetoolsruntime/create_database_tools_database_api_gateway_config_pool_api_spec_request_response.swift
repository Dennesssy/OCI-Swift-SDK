import Foundation
import OCICommon

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var opcRequestId: String?
    public var createDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, opcRequestId, createDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                opcRequestId: String? = nil,
                createDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.opcRequestId = opcRequestId
        self.createDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails = createDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecRequest()" }
}

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolApiSpec: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPoolApiSpec
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolApiSpec: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPoolApiSpec = databaseToolsDatabaseApiGatewayConfigPoolApiSpec
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolApiSpecResponse()" }
}