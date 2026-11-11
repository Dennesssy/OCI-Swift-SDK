import Foundation
import OCICommon

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var poolKey: String?
    public var opcRequestId: String?
    public var createDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, poolKey, opcRequestId, createDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                poolKey: String? = nil,
                opcRequestId: String? = nil,
                createDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails: JSONValue? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.poolKey = poolKey
        self.opcRequestId = opcRequestId
        self.createDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails = createDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecRequest()" }
}

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse

public struct CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: Codable, Sendable {
    public var location: String?
    public var etag: String?
    public var opcRequestId: String?
    public var databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case location, etag, opcRequestId, databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec
    }

    public init(
                location: String? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil,
                databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec: JSONValue? = nil
    ) {
        self.location = location
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec = databaseToolsDatabaseApiGatewayConfigPoolAutoApiSpec
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse: CustomStringConvertible {
    public var description: String { "CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecResponse()" }
}