import Foundation
import OCICommon

// MARK: - QueryResultRow

public struct QueryResultRow: Codable, Sendable {

    public var queryResultRowData: [String: JSONValue]
    public var queryResultRowMetadata: [String: JSONValue]

    private enum CodingKeys: String, CodingKey {
        case queryResultRowData, queryResultRowMetadata
    }

    public init(
                queryResultRowData: [String: JSONValue],
                queryResultRowMetadata: [String: JSONValue]
    ) {
        self.queryResultRowData = queryResultRowData
        self.queryResultRowMetadata = queryResultRowMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultRow: CustomStringConvertible {
    public var description: String { "QueryResultRow()" }
}