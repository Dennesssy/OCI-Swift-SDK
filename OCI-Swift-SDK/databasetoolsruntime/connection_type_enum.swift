import Foundation

// MARK: - ConnectionTypeEnum

public enum ConnectionTypeEnum: String, Codable, Sendable {
    case oracleDatabase = "ORACLE_DATABASE"
    case mysql = "MYSQL"
    case postgresql = "POSTGRESQL"
}

public extension ConnectionTypeEnum {
    static var allValues: [ConnectionTypeEnum] { [.oracleDatabase, .mysql, .postgresql] }
    static var allStringValues: [String] { ["ORACLE_DATABASE", "MYSQL", "POSTGRESQL"] }
    static func fromString(_ value: String) -> ConnectionTypeEnum? { ConnectionTypeEnum(rawValue: value) }
}