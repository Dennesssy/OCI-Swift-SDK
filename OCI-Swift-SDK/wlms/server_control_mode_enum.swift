import Foundation

// MARK: - ServerControlModeEnum

public enum ServerControlModeEnum: String, Codable, Sendable {
    case useNodeManager = "USE_NODE_MANAGER"
    case useScripts = "USE_SCRIPTS"
}

public extension ServerControlModeEnum {
    static var allValues: [ServerControlModeEnum] { [.useNodeManager, .useScripts] }
    static var allStringValues: [String] { ["USE_NODE_MANAGER", "USE_SCRIPTS"] }
    static func fromString(_ value: String) -> ServerControlModeEnum? { ServerControlModeEnum(rawValue: value) }
}