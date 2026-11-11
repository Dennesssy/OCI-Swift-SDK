import Foundation

// MARK: - SyncRepositorySyncMergeStrategyEnum

public enum SyncRepositorySyncMergeStrategyEnum: String, Codable, Sendable {
    case fetchAndMerge = "FETCH_AND_MERGE"
    case discard = "DISCARD"
}

public extension SyncRepositorySyncMergeStrategyEnum {
    static var allValues: [SyncRepositorySyncMergeStrategyEnum] { [.fetchAndMerge, .discard] }
    static var allStringValues: [String] { ["FETCH_AND_MERGE", "DISCARD"] }
    static func fromString(_ value: String) -> SyncRepositorySyncMergeStrategyEnum? { SyncRepositorySyncMergeStrategyEnum(rawValue: value) }
}