import Foundation

// MARK: - SummarizeRepositoryAnalyticsDetailsGroupByEnum

public enum SummarizeRepositoryAnalyticsDetailsGroupByEnum: String, Codable, Sendable {
    case author = "AUTHOR"
}

public extension SummarizeRepositoryAnalyticsDetailsGroupByEnum {
    static var allValues: [SummarizeRepositoryAnalyticsDetailsGroupByEnum] { [.author] }
    static var allStringValues: [String] { ["AUTHOR"] }
    static func fromString(_ value: String) -> SummarizeRepositoryAnalyticsDetailsGroupByEnum? { SummarizeRepositoryAnalyticsDetailsGroupByEnum(rawValue: value) }
}