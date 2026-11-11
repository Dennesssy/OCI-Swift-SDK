import Foundation

// MARK: - DatabaseConnectionTypeEnum

public enum DatabaseConnectionTypeEnum: String, Codable, Sendable {
    case cloudWallet = "CLOUD_WALLET"
    case customJdbc = "CUSTOM_JDBC"
}

public extension DatabaseConnectionTypeEnum {
    static var allValues: [DatabaseConnectionTypeEnum] { [.cloudWallet, .customJdbc] }
    static var allStringValues: [String] { ["CLOUD_WALLET", "CUSTOM_JDBC"] }
    static func fromString(_ value: String) -> DatabaseConnectionTypeEnum? { DatabaseConnectionTypeEnum(rawValue: value) }
}