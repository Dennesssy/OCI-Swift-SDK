import Foundation

// MARK: - ExecuteSqlResponseItemResultSetMetadata

public struct ExecuteSqlResponseItemResultSetMetadata: Codable, Sendable {

    public var databaseColumnName: String?
    public var uniqueColumnName: String?
    public var columnTypeName: String?
    public var precision: Int?
    public var scale: Int?
    public var isNullable: Bool?

    private enum CodingKeys: String, CodingKey {
        case databaseColumnName, uniqueColumnName, columnTypeName, precision, scale, isNullable
    }

    public init(
                databaseColumnName: String? = nil,
                uniqueColumnName: String? = nil,
                columnTypeName: String? = nil,
                precision: Int? = nil,
                scale: Int? = nil,
                isNullable: Bool? = nil
    ) {
        self.databaseColumnName = databaseColumnName
        self.uniqueColumnName = uniqueColumnName
        self.columnTypeName = columnTypeName
        self.precision = precision
        self.scale = scale
        self.isNullable = isNullable
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecuteSqlResponseItemResultSetMetadata: CustomStringConvertible {
    public var description: String { "ExecuteSqlResponseItemResultSetMetadata()" }
}