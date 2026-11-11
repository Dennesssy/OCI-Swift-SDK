import Foundation

// MARK: - SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum

public enum SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum: String, Codable, Sendable {
    case author = "AUTHOR"
}

public extension SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum {
    static var allValues: [SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum] { [.author] }
    static var allStringValues: [String] { ["AUTHOR"] }
    static func fromString(_ value: String) -> SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum? { SummarizeProjectRepositoryAnalyticsDetailsGroupByEnum(rawValue: value) }
}