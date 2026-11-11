import Foundation

// MARK: - DatabaseObjectTypeEnum

public enum DatabaseObjectTypeEnum: String, Codable, Sendable {
    case view = "VIEW"
    case table = "TABLE"
    case annotation = "ANNOTATION"
    case comment = "COMMENT"
}

public extension DatabaseObjectTypeEnum {
    static var allValues: [DatabaseObjectTypeEnum] { [.view, .table, .annotation, .comment] }
    static var allStringValues: [String] { ["VIEW", "TABLE", "ANNOTATION", "COMMENT"] }
    static func fromString(_ value: String) -> DatabaseObjectTypeEnum? { DatabaseObjectTypeEnum(rawValue: value) }
}