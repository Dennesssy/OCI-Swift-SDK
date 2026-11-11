import Foundation

// MARK: - ListJavaMigrationAnalysisSortOrderEnum

public enum ListJavaMigrationAnalysisSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListJavaMigrationAnalysisSortOrderEnum {
    static var allValues: [ListJavaMigrationAnalysisSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListJavaMigrationAnalysisSortOrderEnum? { ListJavaMigrationAnalysisSortOrderEnum(rawValue: value) }
}