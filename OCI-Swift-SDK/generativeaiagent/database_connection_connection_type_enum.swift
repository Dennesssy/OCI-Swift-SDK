import Foundation

// MARK: - DatabaseConnectionConnectionTypeEnum

public enum DatabaseConnectionConnectionTypeEnum: String, Codable, Sendable {
    case databaseToolConnection = "DATABASE_TOOL_CONNECTION"
}

public extension DatabaseConnectionConnectionTypeEnum {
    static var allValues: [DatabaseConnectionConnectionTypeEnum] { [.databaseToolConnection] }
    static var allStringValues: [String] { ["DATABASE_TOOL_CONNECTION"] }
    static func fromString(_ value: String) -> DatabaseConnectionConnectionTypeEnum? { DatabaseConnectionConnectionTypeEnum(rawValue: value) }
}