import Foundation

// MARK: - VmClusterNetworkTypeEnum

public enum VmClusterNetworkTypeEnum: String, Codable, Sendable {
    case client = "CLIENT"
    case backup = "BACKUP"
}

public extension VmClusterNetworkTypeEnum {
    static var allValues: [VmClusterNetworkTypeEnum] { [.client, .backup] }
    static var allStringValues: [String] { ["CLIENT", "BACKUP"] }
    static func fromString(_ value: String) -> VmClusterNetworkTypeEnum? { VmClusterNetworkTypeEnum(rawValue: value) }
}