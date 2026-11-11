import Foundation

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigContentRequest

public struct GetDatabaseToolsDatabaseApiGatewayConfigContentRequest: Codable, Sendable {
    public var databaseToolsDatabaseApiGatewayConfigId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var ifNoneMatch: String?

    private enum CodingKeys: String, CodingKey {
        case databaseToolsDatabaseApiGatewayConfigId, opcRequestId, ifMatch, ifNoneMatch
    }

    public init(
                databaseToolsDatabaseApiGatewayConfigId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                ifNoneMatch: String? = nil
    ) {
        self.databaseToolsDatabaseApiGatewayConfigId = databaseToolsDatabaseApiGatewayConfigId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.ifNoneMatch = ifNoneMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigContentRequest: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigContentRequest()" }
}

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigContentResponse

public struct GetDatabaseToolsDatabaseApiGatewayConfigContentResponse: Codable, Sendable {
    public var content: Data?
    public var etag: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, etag, opcRequestId
    }

    public init(
                content: Data? = nil,
                etag: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.etag = etag
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDatabaseToolsDatabaseApiGatewayConfigContentResponse: CustomStringConvertible {
    public var description: String { "GetDatabaseToolsDatabaseApiGatewayConfigContentResponse()" }
}