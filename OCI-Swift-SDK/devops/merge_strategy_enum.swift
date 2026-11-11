import Foundation

// MARK: - MergeStrategyEnum

public enum MergeStrategyEnum: String, Codable, Sendable {
    case mergeCommit = "MERGE_COMMIT"
    case fastForward = "FAST_FORWARD"
    case fastForwardOnly = "FAST_FORWARD_ONLY"
    case rebaseAndMerge = "REBASE_AND_MERGE"
    case rebaseAndFastForward = "REBASE_AND_FAST_FORWARD"
    case squash = "SQUASH"
    case squashFastForwardOnly = "SQUASH_FAST_FORWARD_ONLY"
}

public extension MergeStrategyEnum {
    static var allValues: [MergeStrategyEnum] { [.mergeCommit, .fastForward, .fastForwardOnly, .rebaseAndMerge, .rebaseAndFastForward, .squash, .squashFastForwardOnly] }
    static var allStringValues: [String] { ["MERGE_COMMIT", "FAST_FORWARD", "FAST_FORWARD_ONLY", "REBASE_AND_MERGE", "REBASE_AND_FAST_FORWARD", "SQUASH", "SQUASH_FAST_FORWARD_ONLY"] }
    static func fromString(_ value: String) -> MergeStrategyEnum? { MergeStrategyEnum(rawValue: value) }
}