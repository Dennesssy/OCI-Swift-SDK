import Foundation

// MARK: - DeployArtifactArgumentSubstitutionModeEnum

public enum DeployArtifactArgumentSubstitutionModeEnum: String, Codable, Sendable {
    case none = "NONE"
    case substitutePlaceholders = "SUBSTITUTE_PLACEHOLDERS"
}

public extension DeployArtifactArgumentSubstitutionModeEnum {
    static var allValues: [DeployArtifactArgumentSubstitutionModeEnum] { [.none, .substitutePlaceholders] }
    static var allStringValues: [String] { ["NONE", "SUBSTITUTE_PLACEHOLDERS"] }
    static func fromString(_ value: String) -> DeployArtifactArgumentSubstitutionModeEnum? { DeployArtifactArgumentSubstitutionModeEnum(rawValue: value) }
}