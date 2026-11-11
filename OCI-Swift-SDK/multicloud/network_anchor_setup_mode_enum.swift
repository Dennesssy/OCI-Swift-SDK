import Foundation

// MARK: - NetworkAnchorSetupModeEnum

public enum NetworkAnchorSetupModeEnum: String, Codable, Sendable {
    case autoBind = "AUTO_BIND"
    case noAutoBind = "NO_AUTO_BIND"
}

public extension NetworkAnchorSetupModeEnum {
    static var allValues: [NetworkAnchorSetupModeEnum] { [.autoBind, .noAutoBind] }
    static var allStringValues: [String] { ["AUTO_BIND", "NO_AUTO_BIND"] }
    static func fromString(_ value: String) -> NetworkAnchorSetupModeEnum? { NetworkAnchorSetupModeEnum(rawValue: value) }
}