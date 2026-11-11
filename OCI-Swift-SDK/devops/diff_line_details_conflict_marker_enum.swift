import Foundation

// MARK: - DiffLineDetailsConflictMarkerEnum

public enum DiffLineDetailsConflictMarkerEnum: String, Codable, Sendable {
    case base = "BASE"
    case target = "TARGET"
    case marker = "MARKER"
    case none = "NONE"
}

public extension DiffLineDetailsConflictMarkerEnum {
    static var allValues: [DiffLineDetailsConflictMarkerEnum] { [.base, .target, .marker, .none] }
    static var allStringValues: [String] { ["BASE", "TARGET", "MARKER", "NONE"] }
    static func fromString(_ value: String) -> DiffLineDetailsConflictMarkerEnum? { DiffLineDetailsConflictMarkerEnum(rawValue: value) }
}