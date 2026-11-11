import Foundation

// MARK: - ScheduledQueryProcessingTypeEnum

public enum ScheduledQueryProcessingTypeEnum: String, Codable, Sendable {
    case export = "EXPORT"
    case query = "QUERY"
    case alert = "ALERT"
}

public extension ScheduledQueryProcessingTypeEnum {
    static var allValues: [ScheduledQueryProcessingTypeEnum] { [.export, .query, .alert] }
    static var allStringValues: [String] { ["EXPORT", "QUERY", "ALERT"] }
    static func fromString(_ value: String) -> ScheduledQueryProcessingTypeEnum? { ScheduledQueryProcessingTypeEnum(rawValue: value) }
}