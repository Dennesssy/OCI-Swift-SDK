import Foundation
import OCICommon

// MARK: - QueryResultResponse

public struct QueryResultResponse: Codable, Sendable {

    public var queryResultMetadataSummary: QueryResultMetadataSummary?
    public var queryResultRows: [QueryResultRow]
    public var queryResultMetadata: [String: JSONValue]?
    public var queryResultWarnings: [QueryResultWarning]?

    private enum CodingKeys: String, CodingKey {
        case queryResultMetadataSummary, queryResultRows, queryResultMetadata, queryResultWarnings
    }

    public init(
                queryResultMetadataSummary: QueryResultMetadataSummary? = nil,
                queryResultRows: [QueryResultRow],
                queryResultMetadata: [String: JSONValue]? = nil,
                queryResultWarnings: [QueryResultWarning]? = nil
    ) {
        self.queryResultMetadataSummary = queryResultMetadataSummary
        self.queryResultRows = queryResultRows
        self.queryResultMetadata = queryResultMetadata
        self.queryResultWarnings = queryResultWarnings
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultResponse: CustomStringConvertible {
    public var description: String { "QueryResultResponse()" }
}