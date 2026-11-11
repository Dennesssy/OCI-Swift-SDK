import Foundation

// MARK: - ListJavaMigrationAnalysisSortByEnum

public enum ListJavaMigrationAnalysisSortByEnum: String, Codable, Sendable {
    case created = "TIME_CREATED"
    case started = "TIME_STARTED"
    case finished = "TIME_FINISHED"
}

public extension ListJavaMigrationAnalysisSortByEnum {
    static var allValues: [ListJavaMigrationAnalysisSortByEnum] { [.created, .started, .finished] }
    static var allStringValues: [String] { ["TIME_CREATED", "TIME_STARTED", "TIME_FINISHED"] }
    static func fromString(_ value: String) -> ListJavaMigrationAnalysisSortByEnum? { ListJavaMigrationAnalysisSortByEnum(rawValue: value) }
}