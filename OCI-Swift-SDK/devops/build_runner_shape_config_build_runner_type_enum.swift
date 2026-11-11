import Foundation

// MARK: - BuildRunnerShapeConfigBuildRunnerTypeEnum

public enum BuildRunnerShapeConfigBuildRunnerTypeEnum: String, Codable, Sendable {
    case custom = "CUSTOM"
    case `default` = "DEFAULT"
}

public extension BuildRunnerShapeConfigBuildRunnerTypeEnum {
    static var allValues: [BuildRunnerShapeConfigBuildRunnerTypeEnum] { [.custom, .`default`] }
    static var allStringValues: [String] { ["CUSTOM", "DEFAULT"] }
    static func fromString(_ value: String) -> BuildRunnerShapeConfigBuildRunnerTypeEnum? { BuildRunnerShapeConfigBuildRunnerTypeEnum(rawValue: value) }
}