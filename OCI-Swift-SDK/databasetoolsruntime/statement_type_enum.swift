import Foundation

// MARK: - StatementTypeEnum

public enum StatementTypeEnum: String, Codable, Sendable {
    case query = "QUERY"
    case dml = "DML"
    case ddl = "DDL"
    case plsql = "PLSQL"
    case sqlplus = "SQLPLUS"
    case ignore = "IGNORE"
    case transactionControl = "TRANSACTION_CONTROL"
    case sessionControl = "SESSION_CONTROL"
    case systemControl = "SYSTEM_CONTROL"
    case jdbc = "JDBC"
    case other = "OTHER"
}

public extension StatementTypeEnum {
    static var allValues: [StatementTypeEnum] { [.query, .dml, .ddl, .plsql, .sqlplus, .ignore, .transactionControl, .sessionControl, .systemControl, .jdbc, .other] }
    static var allStringValues: [String] { ["QUERY", "DML", "DDL", "PLSQL", "SQLPLUS", "IGNORE", "TRANSACTION_CONTROL", "SESSION_CONTROL", "SYSTEM_CONTROL", "JDBC", "OTHER"] }
    static func fromString(_ value: String) -> StatementTypeEnum? { StatementTypeEnum(rawValue: value) }
}