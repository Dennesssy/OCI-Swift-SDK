import Foundation
import OCICommon

// MARK: - ExecuteSqlInputScriptSqlRequestDetails

public struct ExecuteSqlInputScriptSqlRequestDetails: Codable, Sendable {

    public var sqlRequests: [JSONValue]
    public var properties: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case sqlRequests, properties
    }

    public init(
                sqlRequests: [JSONValue],
                properties: JSONValue? = nil
    ) {
        self.sqlRequests = sqlRequests
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlInputScriptSqlRequestDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlInputScriptSqlRequestDetails()" }
}