import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum: String, Codable, Sendable {
    case settings = "SETTINGS"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum] { [.settings] }
    static var allStringValues: [String] { ["SETTINGS"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum(rawValue: value) }
}