import Foundation

// MARK: - ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum

public enum ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum: String, Codable, Sendable {
    case synchronous = "SYNCHRONOUS"
    case asynchronous = "ASYNCHRONOUS"
}

public extension ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum {
    static var allValues: [ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum] { [.synchronous, .asynchronous] }
    static var allStringValues: [String] { ["SYNCHRONOUS", "ASYNCHRONOUS"] }
    static func fromString(_ value: String) -> ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum? { ExecuteSqlDatabaseToolsConnectionDetailsTypeEnum(rawValue: value) }
}