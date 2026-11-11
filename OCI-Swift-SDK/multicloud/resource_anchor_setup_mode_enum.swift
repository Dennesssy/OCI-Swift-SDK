import Foundation

// MARK: - ResourceAnchorSetupModeEnum

public enum ResourceAnchorSetupModeEnum: String, Codable, Sendable {
    case autoBind = "AUTO_BIND"
    case noAutoBind = "NO_AUTO_BIND"
}

public extension ResourceAnchorSetupModeEnum {
    static var allValues: [ResourceAnchorSetupModeEnum] { [.autoBind, .noAutoBind] }
    static var allStringValues: [String] { ["AUTO_BIND", "NO_AUTO_BIND"] }
    static func fromString(_ value: String) -> ResourceAnchorSetupModeEnum? { ResourceAnchorSetupModeEnum(rawValue: value) }
}