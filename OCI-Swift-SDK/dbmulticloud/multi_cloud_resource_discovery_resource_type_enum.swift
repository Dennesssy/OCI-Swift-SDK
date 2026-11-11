import Foundation

// MARK: - MultiCloudResourceDiscoveryResourceTypeEnum

public enum MultiCloudResourceDiscoveryResourceTypeEnum: String, Codable, Sendable {
    case vaults = "VAULTS"
    case storage = "STORAGE"
    case gcpKeyRings = "GCP_KEY_RINGS"
    case awsKeys = "AWS_KEYS"
}

public extension MultiCloudResourceDiscoveryResourceTypeEnum {
    static var allValues: [MultiCloudResourceDiscoveryResourceTypeEnum] { [.vaults, .storage, .gcpKeyRings, .awsKeys] }
    static var allStringValues: [String] { ["VAULTS", "STORAGE", "GCP_KEY_RINGS", "AWS_KEYS"] }
    static func fromString(_ value: String) -> MultiCloudResourceDiscoveryResourceTypeEnum? { MultiCloudResourceDiscoveryResourceTypeEnum(rawValue: value) }
}