import Foundation

// MARK: - HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum

public enum HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum: String, Codable, Sendable {
    case inline = "INLINE"
}

public extension HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum {
    static var allValues: [HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum] { [.inline] }
    static var allStringValues: [String] { ["INLINE"] }
    static func fromString(_ value: String) -> HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum? { HelmCommandSpecArtifactSourceHelmArtifactSourceTypeEnum(rawValue: value) }
}