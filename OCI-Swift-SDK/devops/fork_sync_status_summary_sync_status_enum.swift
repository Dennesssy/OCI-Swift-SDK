import Foundation

// MARK: - ForkSyncStatusSummarySyncStatusEnum

public enum ForkSyncStatusSummarySyncStatusEnum: String, Codable, Sendable {
    case inSync = "IN_SYNC"
    case syncInProgress = "SYNC_IN_PROGRESS"
    case outOfSync = "OUT_OF_SYNC"
}

public extension ForkSyncStatusSummarySyncStatusEnum {
    static var allValues: [ForkSyncStatusSummarySyncStatusEnum] { [.inSync, .syncInProgress, .outOfSync] }
    static var allStringValues: [String] { ["IN_SYNC", "SYNC_IN_PROGRESS", "OUT_OF_SYNC"] }
    static func fromString(_ value: String) -> ForkSyncStatusSummarySyncStatusEnum? { ForkSyncStatusSummarySyncStatusEnum(rawValue: value) }
}