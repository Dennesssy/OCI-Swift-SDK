import Foundation

// MARK: - GetGenerateSqlFromNlJobRequest

public struct GetGenerateSqlFromNlJobRequest: Codable, Sendable {
    public var semanticStoreId: String?
    public var generateSqlFromNlJobId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case semanticStoreId, generateSqlFromNlJobId, opcRequestId
    }

    public init(
                semanticStoreId: String? = nil,
                generateSqlFromNlJobId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.semanticStoreId = semanticStoreId
        self.generateSqlFromNlJobId = generateSqlFromNlJobId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGenerateSqlFromNlJobRequest: CustomStringConvertible {
    public var description: String { "GetGenerateSqlFromNlJobRequest()" }
}

// MARK: - GetGenerateSqlFromNlJobResponse

public struct GetGenerateSqlFromNlJobResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var generateSqlFromNlJob: GenerateSqlFromNlJob?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, generateSqlFromNlJob
    }

    public init(
                opcRequestId: String? = nil,
                generateSqlFromNlJob: GenerateSqlFromNlJob? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.generateSqlFromNlJob = generateSqlFromNlJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetGenerateSqlFromNlJobResponse: CustomStringConvertible {
    public var description: String { "GetGenerateSqlFromNlJobResponse()" }
}