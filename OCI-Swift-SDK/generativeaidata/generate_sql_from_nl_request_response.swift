import Foundation

// MARK: - GenerateSqlFromNlRequest

public struct GenerateSqlFromNlRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var generateSqlFromNlDetails: GenerateSqlFromNlDetails?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, opcRequestId, ifMatch, generateSqlFromNlDetails
    }

    public init(
                semanticStoreId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                generateSqlFromNlDetails: GenerateSqlFromNlDetails? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.generateSqlFromNlDetails = generateSqlFromNlDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateSqlFromNlRequest: CustomStringConvertible {
    public var description: String { "GenerateSqlFromNlRequest()" }
}

// MARK: - GenerateSqlFromNlResponse

public struct GenerateSqlFromNlResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var opcWorkRequestId: String?
    public var generateSqlFromNlJob: GenerateSqlFromNlJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, opcWorkRequestId, generateSqlFromNlJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil,
                generateSqlFromNlJob: GenerateSqlFromNlJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
        self.generateSqlFromNlJob = generateSqlFromNlJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerateSqlFromNlResponse: CustomStringConvertible {
    public var description: String { "GenerateSqlFromNlResponse()" }
}