import Foundation

// MARK: - OciNetworkSubnetTypeEnum

public enum OciNetworkSubnetTypeEnum: String, Codable, Sendable {
    case client = "CLIENT"
    case backup = "BACKUP"
}

public extension OciNetworkSubnetTypeEnum {
    static var allValues: [OciNetworkSubnetTypeEnum] { [.client, .backup] }
    static var allStringValues: [String] { ["CLIENT", "BACKUP"] }
    static func fromString(_ value: String) -> OciNetworkSubnetTypeEnum? { OciNetworkSubnetTypeEnum(rawValue: value) }
}