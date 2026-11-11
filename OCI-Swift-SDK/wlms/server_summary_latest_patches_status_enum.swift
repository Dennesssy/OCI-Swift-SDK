import Foundation

// MARK: - ServerSummaryLatestPatchesStatusEnum

public enum ServerSummaryLatestPatchesStatusEnum: String, Codable, Sendable {
    case onLatestPatches = "ON_LATEST_PATCHES"
    case patchingRequired = "PATCHING_REQUIRED"
    case unknown = "UNKNOWN"
}

public extension ServerSummaryLatestPatchesStatusEnum {
    static var allValues: [ServerSummaryLatestPatchesStatusEnum] { [.onLatestPatches, .patchingRequired, .unknown] }
    static var allStringValues: [String] { ["ON_LATEST_PATCHES", "PATCHING_REQUIRED", "UNKNOWN"] }
    static func fromString(_ value: String) -> ServerSummaryLatestPatchesStatusEnum? { ServerSummaryLatestPatchesStatusEnum(rawValue: value) }
}