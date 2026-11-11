import Foundation
import OCICommon

// MARK: - ExecuteSqlDatabaseToolsConnectionAsynchronousDetails

public struct ExecuteSqlDatabaseToolsConnectionAsynchronousDetails: Codable, Sendable {

    public var input: JSONValue
    public var output: JSONValue?
    public var timeoutInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case input, output, timeoutInSeconds
    }

    public init(
                input: JSONValue,
                output: JSONValue? = nil,
                timeoutInSeconds: Int? = nil
    ) {
        self.input = input
        self.output = output
        self.timeoutInSeconds = timeoutInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlDatabaseToolsConnectionAsynchronousDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlDatabaseToolsConnectionAsynchronousDetails()" }
}