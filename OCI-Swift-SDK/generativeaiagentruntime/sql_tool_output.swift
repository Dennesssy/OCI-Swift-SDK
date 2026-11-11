import Foundation
import OCICommon

// MARK: - SqlToolOutput

public struct SqlToolOutput: Codable, Sendable {

    public var toolId: String?
    public var generatedSql: String?
    public var toolName: String?
    public var result: [JSONValue]?
    public var resultFiles: SqlResultFiles?
    public var additionalInfo: String?

    private enum CodingKeys: String, CodingKey {
        case toolId, generatedSql, toolName, result, resultFiles, additionalInfo
    }

    public init(
                toolId: String? = nil,
                generatedSql: String? = nil,
                toolName: String? = nil,
                result: [JSONValue]? = nil,
                resultFiles: SqlResultFiles? = nil,
                additionalInfo: String? = nil
    ) {
        self.toolId = toolId
        self.generatedSql = generatedSql
        self.toolName = toolName
        self.result = result
        self.resultFiles = resultFiles
        self.additionalInfo = additionalInfo
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SqlToolOutput: CustomStringConvertible {
    public var description: String { "SqlToolOutput()" }
}