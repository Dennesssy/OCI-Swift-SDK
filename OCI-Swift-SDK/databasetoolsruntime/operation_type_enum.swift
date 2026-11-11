import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case executeSql = "EXECUTE_SQL"
    case executeSqlScheduledDeletion = "EXECUTE_SQL_SCHEDULED_DELETION"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.executeSql, .executeSqlScheduledDeletion] }
    static var allStringValues: [String] { ["EXECUTE_SQL", "EXECUTE_SQL_SCHEDULED_DELETION"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}