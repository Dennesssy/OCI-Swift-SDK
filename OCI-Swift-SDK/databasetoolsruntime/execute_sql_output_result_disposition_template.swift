import Foundation
import OCICommon

// MARK: - ExecuteSqlOutputResultDispositionTemplate

public struct ExecuteSqlOutputResultDispositionTemplate: Codable, Sendable {

    public var statementType: StatementTypeEnum
    public var objectTemplate: JSONValue

    private enum CodingKeys: String, CodingKey {
        case statementType, objectTemplate
    }

    public init(
                statementType: StatementTypeEnum,
                objectTemplate: JSONValue
    ) {
        self.statementType = statementType
        self.objectTemplate = objectTemplate
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlOutputResultDispositionTemplate: CustomStringConvertible {
    public var description: String { "ExecuteSqlOutputResultDispositionTemplate()" }
}