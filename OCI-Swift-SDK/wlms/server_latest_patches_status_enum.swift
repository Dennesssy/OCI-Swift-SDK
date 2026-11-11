import Foundation

// MARK: - ServerLatestPatchesStatusEnum

public enum ServerLatestPatchesStatusEnum: String, Codable, Sendable {
    case onLatestPatches = "ON_LATEST_PATCHES"
    case patchingRequired = "PATCHING_REQUIRED"
    case unknown = "UNKNOWN"
}

public extension ServerLatestPatchesStatusEnum {
    static var allValues: [ServerLatestPatchesStatusEnum] { [.onLatestPatches, .patchingRequired, .unknown] }
    static var allStringValues: [String] { ["ON_LATEST_PATCHES", "PATCHING_REQUIRED", "UNKNOWN"] }
    static func fromString(_ value: String) -> ServerLatestPatchesStatusEnum? { ServerLatestPatchesStatusEnum(rawValue: value) }
}