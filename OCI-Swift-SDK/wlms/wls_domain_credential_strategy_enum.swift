import Foundation

// MARK: - WlsDomainCredentialStrategyEnum

public enum WlsDomainCredentialStrategyEnum: String, Codable, Sendable {
    case domainConfig = "USE_DOMAIN_CONFIG"
    case nodeManagerConfig = "USE_NODE_MANAGER_CONFIG"
    case secrets = "USE_SECRETS"
}

public extension WlsDomainCredentialStrategyEnum {
    static var allValues: [WlsDomainCredentialStrategyEnum] { [.domainConfig, .nodeManagerConfig, .secrets] }
    static var allStringValues: [String] { ["USE_DOMAIN_CONFIG", "USE_NODE_MANAGER_CONFIG", "USE_SECRETS"] }
    static func fromString(_ value: String) -> WlsDomainCredentialStrategyEnum? { WlsDomainCredentialStrategyEnum(rawValue: value) }
}