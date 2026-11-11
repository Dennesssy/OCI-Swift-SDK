import Foundation

// MARK: - DatabaseTypeEnum

public enum DatabaseTypeEnum: String, Codable, Sendable {
    case oracle = "ORACLE"
    case mysql = "MYSQL"
}

public extension DatabaseTypeEnum {
    static var allValues: [DatabaseTypeEnum] { [.oracle, .mysql] }
    static var allStringValues: [String] { ["ORACLE", "MYSQL"] }
    static func fromString(_ value: String) -> DatabaseTypeEnum? { DatabaseTypeEnum(rawValue: value) }
}