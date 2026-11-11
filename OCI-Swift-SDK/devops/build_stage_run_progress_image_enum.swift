import Foundation

// MARK: - BuildStageRunProgressImageEnum

public enum BuildStageRunProgressImageEnum: String, Codable, Sendable {
    case ol7X8664Standard10 = "OL7_X86_64_STANDARD_10"
    case ol8X8664Standard10 = "OL8_X86_64_STANDARD_10"
}

public extension BuildStageRunProgressImageEnum {
    static var allValues: [BuildStageRunProgressImageEnum] { [.ol7X8664Standard10, .ol8X8664Standard10] }
    static var allStringValues: [String] { ["OL7_X86_64_STANDARD_10", "OL8_X86_64_STANDARD_10"] }
    static func fromString(_ value: String) -> BuildStageRunProgressImageEnum? { BuildStageRunProgressImageEnum(rawValue: value) }
}