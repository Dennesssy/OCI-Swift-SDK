import Foundation
import OCICommon

// MARK: - ExecuteSqlInputScriptDetails

public struct ExecuteSqlInputScriptDetails: Codable, Sendable {

    public var scripts: [ExecuteSqlInputScriptSqlRequestDetails]
    public var version: String?
    public var properties: [[String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case scripts, version, properties
    }

    public init(
                scripts: [ExecuteSqlInputScriptSqlRequestDetails],
                version: String? = nil,
                properties: [[String: JSONValue]]? = nil
    ) {
        self.scripts = scripts
        self.version = version
        self.properties = properties
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlInputScriptDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlInputScriptDetails()" }
}