import Foundation

// MARK: - SyncJobJobTypeEnum

public enum SyncJobJobTypeEnum: String, Codable, Sendable {
    case `import` = "IMPORT"
    case export = "EXPORT"
}

public extension SyncJobJobTypeEnum {
    static var allValues: [SyncJobJobTypeEnum] { [.`import`, .export] }
    static var allStringValues: [String] { ["IMPORT", "EXPORT"] }
    static func fromString(_ value: String) -> SyncJobJobTypeEnum? { SyncJobJobTypeEnum(rawValue: value) }
}