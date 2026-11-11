import Foundation

// MARK: - ExecuteSqlResponseItemBatch

public struct ExecuteSqlResponseItemBatch: Codable, Sendable {

    public var statementId: Int?
    public var statementType: StatementTypeEnum?
    public var statementPos: ExecuteSqlResponseItemStatementPos?
    public var batchStatementTexts: [String]?
    public var error: ExecuteSqlResponseItemError?
    public var dbmsOutput: String?
    public var properties: ExecuteSqlResponseItemProperties?
    public var responses: [String]?
    public var results: [Int]?

    private enum CodingKeys: String, CodingKey {
        case statementId, statementType, statementPos, batchStatementTexts, error, dbmsOutput, properties, responses, results
    }

    public init(
                statementId: Int? = nil,
                statementType: StatementTypeEnum? = nil,
                statementPos: ExecuteSqlResponseItemStatementPos? = nil,
                batchStatementTexts: [String]? = nil,
                error: ExecuteSqlResponseItemError? = nil,
                dbmsOutput: String? = nil,
                properties: ExecuteSqlResponseItemProperties? = nil,
                responses: [String]? = nil,
                results: [Int]? = nil
    ) {
        self.statementId = statementId
        self.statementType = statementType
        self.statementPos = statementPos
        self.batchStatementTexts = batchStatementTexts
        self.error = error
        self.dbmsOutput = dbmsOutput
        self.properties = properties
        self.responses = responses
        self.results = results
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemBatch: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemBatch()" }
}