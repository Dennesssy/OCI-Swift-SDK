import Foundation

// MARK: - JavaMigrationAnalysisSortByEnum

public enum JavaMigrationAnalysisSortByEnum: String, Codable, Sendable {
    case timeCreated = "TIME_CREATED"
    case timeStarted = "TIME_STARTED"
    case timeFinished = "TIME_FINISHED"
}

public extension JavaMigrationAnalysisSortByEnum {
    static var allValues: [JavaMigrationAnalysisSortByEnum] { [.timeCreated, .timeStarted, .timeFinished] }
    static var allStringValues: [String] { ["TIME_CREATED", "TIME_STARTED", "TIME_FINISHED"] }
    static func fromString(_ value: String) -> JavaMigrationAnalysisSortByEnum? { JavaMigrationAnalysisSortByEnum(rawValue: value) }
}