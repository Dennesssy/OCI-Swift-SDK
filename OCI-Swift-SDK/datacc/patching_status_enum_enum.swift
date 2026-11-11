import Foundation

// MARK: - PatchingStatusEnumEnum

public enum PatchingStatusEnumEnum: String, Codable, Sendable {
    case creating = "CREATING"
    case patching = "PATCHING"
    case waiting = "WAITING"
    case scheduled = "SCHEDULED"
    case complete = "COMPLETE"
    case failed = "FAILED"
}

public extension PatchingStatusEnumEnum {
    static var allValues: [PatchingStatusEnumEnum] { [.creating, .patching, .waiting, .scheduled, .complete, .failed] }
    static var allStringValues: [String] { ["CREATING", "PATCHING", "WAITING", "SCHEDULED", "COMPLETE", "FAILED"] }
    static func fromString(_ value: String) -> PatchingStatusEnumEnum? { PatchingStatusEnumEnum(rawValue: value) }
}