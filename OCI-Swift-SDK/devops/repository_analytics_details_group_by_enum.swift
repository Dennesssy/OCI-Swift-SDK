import Foundation

// MARK: - RepositoryAnalyticsDetailsGroupByEnum

public enum RepositoryAnalyticsDetailsGroupByEnum: String, Codable, Sendable {
    case author = "AUTHOR"
}

public extension RepositoryAnalyticsDetailsGroupByEnum {
    static var allValues: [RepositoryAnalyticsDetailsGroupByEnum] { [.author] }
    static var allStringValues: [String] { ["AUTHOR"] }
    static func fromString(_ value: String) -> RepositoryAnalyticsDetailsGroupByEnum? { RepositoryAnalyticsDetailsGroupByEnum(rawValue: value) }
}