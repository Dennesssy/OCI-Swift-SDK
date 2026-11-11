import Foundation

// MARK: - DeliveredArtifactArtifactTypeEnum

public enum DeliveredArtifactArtifactTypeEnum: String, Codable, Sendable {
    case genericArtifact = "GENERIC_ARTIFACT"
    case ocir = "OCIR"
}

public extension DeliveredArtifactArtifactTypeEnum {
    static var allValues: [DeliveredArtifactArtifactTypeEnum] { [.genericArtifact, .ocir] }
    static var allStringValues: [String] { ["GENERIC_ARTIFACT", "OCIR"] }
    static func fromString(_ value: String) -> DeliveredArtifactArtifactTypeEnum? { DeliveredArtifactArtifactTypeEnum(rawValue: value) }
}