import Foundation
import OCICommon

// MARK: - ExecuteSqlResponseItemStandard

public struct ExecuteSqlResponseItemStandard: Codable, Sendable {

    public var statementId: Int?
    public var statementType: StatementTypeEnum?
    public var statementPos: ExecuteSqlResponseItemStatementPos?
    public var statementText: String?
    public var error: ExecuteSqlResponseItemError?
    public var dbmsOutput: String?
    public var properties: ExecuteSqlResponseItemProperties?
    public var responses: [String]?
    public var results: [Int]?
    public var resultSetObject: JSONValue?
    public var resultSet: ExecuteSqlResponseItemResultSet?
    public var binds: [ExecuteSqlBind]?

    private enum CodingKeys: String, CodingKey {
        case statementId, statementType, statementPos, statementText, error, dbmsOutput, properties, responses, results, resultSetObject, resultSet, binds
    }

    public init(
                statementId: Int? = nil,
                statementType: StatementTypeEnum? = nil,
                statementPos: ExecuteSqlResponseItemStatementPos? = nil,
                statementText: String? = nil,
                error: ExecuteSqlResponseItemError? = nil,
                dbmsOutput: String? = nil,
                properties: ExecuteSqlResponseItemProperties? = nil,
                responses: [String]? = nil,
                results: [Int]? = nil,
                resultSetObject: JSONValue? = nil,
                resultSet: ExecuteSqlResponseItemResultSet? = nil,
                binds: [ExecuteSqlBind]? = nil
    ) {
        self.statementId = statementId
        self.statementType = statementType
        self.statementPos = statementPos
        self.statementText = statementText
        self.error = error
        self.dbmsOutput = dbmsOutput
        self.properties = properties
        self.responses = responses
        self.results = results
        self.resultSetObject = resultSetObject
        self.resultSet = resultSet
        self.binds = binds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemStandard: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemStandard()" }
}