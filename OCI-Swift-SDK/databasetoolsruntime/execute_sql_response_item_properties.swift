import Foundation
import OCICommon

// MARK: - ExecuteSqlResponseItemProperties

public struct ExecuteSqlResponseItemProperties: Codable, Sendable {

    public var query: JSONValue?
    public var statement: JSONValue?
    public var displayName: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case query, statement, displayName
    }

    public init(
                query: JSONValue? = nil,
                statement: JSONValue? = nil,
                displayName: JSONValue? = nil
    ) {
        self.query = query
        self.statement = statement
        self.displayName = displayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemProperties: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemProperties()" }
}