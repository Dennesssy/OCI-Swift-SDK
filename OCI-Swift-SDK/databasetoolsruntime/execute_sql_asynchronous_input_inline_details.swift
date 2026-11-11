import Foundation
import OCICommon

// MARK: - ExecuteSqlAsynchronousInputInlineDetails

public struct ExecuteSqlAsynchronousInputInlineDetails: Codable, Sendable {

    public var content: JSONValue

    private enum CodingKeys: String, CodingKey {
        case content
    }

    public init(
                content: JSONValue
    ) {
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlAsynchronousInputInlineDetails: CustomStringConvertible {
    public var description: String { "ExecuteSqlAsynchronousInputInlineDetails()" }
}