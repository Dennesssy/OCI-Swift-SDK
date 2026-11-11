import Foundation
import OCICommon

// MARK: - ExecuteSqlResponseItemResultSet

public struct ExecuteSqlResponseItemResultSet: Codable, Sendable {

    public var metadata: [ExecuteSqlResponseItemResultSetMetadata]?
    public var items: [[String: JSONValue]]?
    public var hasMore: Bool?
    public var count: Int?
    public var offset: Int?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case metadata, items, hasMore, count, offset, limit
    }

    public init(
                metadata: [ExecuteSqlResponseItemResultSetMetadata]? = nil,
                items: [[String: JSONValue]]? = nil,
                hasMore: Bool? = nil,
                count: Int? = nil,
                offset: Int? = nil,
                limit: Int? = nil
    ) {
        self.metadata = metadata
        self.items = items
        self.hasMore = hasMore
        self.count = count
        self.offset = offset
        self.limit = limit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemResultSet: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemResultSet()" }
}