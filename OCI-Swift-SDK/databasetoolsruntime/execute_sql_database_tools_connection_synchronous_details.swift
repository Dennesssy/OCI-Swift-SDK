import Foundation
import OCICommon

// MARK: - ExecuteSqlDatabaseToolsConnectionSynchronousDetails

public struct ExecuteSqlDatabaseToolsConnectionSynchronousDetails: Codable, Sendable {

    public var input: JSONValue
    public var output: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case input, output
    }

    public init(
                input: JSONValue,
                output: JSONValue? = nil
    ) {
        self.input = input
        self.output = output
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlDatabaseToolsConnectionSynchronousDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlDatabaseToolsConnectionSynchronousDetails()" }
}