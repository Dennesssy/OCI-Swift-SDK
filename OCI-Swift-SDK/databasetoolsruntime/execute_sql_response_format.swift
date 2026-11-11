import Foundation

// MARK: - ExecuteSqlResponseFormat

public struct ExecuteSqlResponseFormat: Codable, Sendable {

    public var resultSetMetaData: Bool?
    public var statementInformation: Bool?
    public var statementText: Bool?
    public var binds: Bool?
    public var result: Bool?
    public var response: Bool?

    private enum CodingKeys: String, CodingKey {
        case resultSetMetaData, statementInformation, statementText, binds, result, response
    }

    public init(
                resultSetMetaData: Bool? = nil,
                statementInformation: Bool? = nil,
                statementText: Bool? = nil,
                binds: Bool? = nil,
                result: Bool? = nil,
                response: Bool? = nil
    ) {
        self.resultSetMetaData = resultSetMetaData
        self.statementInformation = statementInformation
        self.statementText = statementText
        self.binds = binds
        self.result = result
        self.response = response
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseFormat: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseFormat()" }
}