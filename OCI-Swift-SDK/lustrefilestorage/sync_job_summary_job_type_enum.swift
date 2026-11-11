import Foundation

// MARK: - SyncJobSummaryJobTypeEnum

public enum SyncJobSummaryJobTypeEnum: String, Codable, Sendable {
    case `import` = "IMPORT"
    case export = "EXPORT"
}

public extension SyncJobSummaryJobTypeEnum {
    static var allValues: [SyncJobSummaryJobTypeEnum] { [.`import`, .export] }
    static var allStringValues: [String] { ["IMPORT", "EXPORT"] }
    static func fromString(_ value: String) -> SyncJobSummaryJobTypeEnum? { SyncJobSummaryJobTypeEnum(rawValue: value) }
}