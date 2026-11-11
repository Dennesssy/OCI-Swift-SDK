import Foundation

// MARK: - ListResourceAnalyticsInstancesSortByEnum

public enum ListResourceAnalyticsInstancesSortByEnum: String, Codable, Sendable {
    case timeCreated = "TIME_CREATED"
    case displayName = "DISPLAY_NAME"
}

public extension ListResourceAnalyticsInstancesSortByEnum {
    static var allValues: [ListResourceAnalyticsInstancesSortByEnum] { [.timeCreated, .displayName] }
    static var allStringValues: [String] { ["TIME_CREATED", "DISPLAY_NAME"] }
    static func fromString(_ value: String) -> ListResourceAnalyticsInstancesSortByEnum? { ListResourceAnalyticsInstancesSortByEnum(rawValue: value) }
}