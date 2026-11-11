import Foundation

// MARK: - SqlToolConfigDialectEnum

public enum SqlToolConfigDialectEnum: String, Codable, Sendable {
    case sqlLite = "SQL_LITE"
    case oracleSql = "ORACLE_SQL"
}

public extension SqlToolConfigDialectEnum {
    static var allValues: [SqlToolConfigDialectEnum] { [.sqlLite, .oracleSql] }
    static var allStringValues: [String] { ["SQL_LITE", "ORACLE_SQL"] }
    static func fromString(_ value: String) -> SqlToolConfigDialectEnum? { SqlToolConfigDialectEnum(rawValue: value) }
}