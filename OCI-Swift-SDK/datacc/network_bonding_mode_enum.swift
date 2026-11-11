import Foundation

// MARK: - NetworkBondingModeEnum

public enum NetworkBondingModeEnum: String, Codable, Sendable {
    case activeBackup = "ACTIVE_BACKUP"
    case lacp = "LACP"
}

public extension NetworkBondingModeEnum {
    static var allValues: [NetworkBondingModeEnum] { [.activeBackup, .lacp] }
    static var allStringValues: [String] { ["ACTIVE_BACKUP", "LACP"] }
    static func fromString(_ value: String) -> NetworkBondingModeEnum? { NetworkBondingModeEnum(rawValue: value) }
}