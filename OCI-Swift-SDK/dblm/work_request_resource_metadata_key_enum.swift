import Foundation

// MARK: - WorkRequestResourceMetadataKeyEnum

public enum WorkRequestResourceMetadataKeyEnum: String, Codable, Sendable {
    case isDryRun = "IS_DRY_RUN"
}

public extension WorkRequestResourceMetadataKeyEnum {
    static var allValues: [WorkRequestResourceMetadataKeyEnum] { [.isDryRun] }
    static var allStringValues: [String] { ["IS_DRY_RUN"] }
    static func fromString(_ value: String) -> WorkRequestResourceMetadataKeyEnum? { WorkRequestResourceMetadataKeyEnum(rawValue: value) }
}