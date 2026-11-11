import Foundation

// MARK: - ListPerformanceTuningAnalysisSortOrderEnum

public enum ListPerformanceTuningAnalysisSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListPerformanceTuningAnalysisSortOrderEnum {
    static var allValues: [ListPerformanceTuningAnalysisSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListPerformanceTuningAnalysisSortOrderEnum? { ListPerformanceTuningAnalysisSortOrderEnum(rawValue: value) }
}