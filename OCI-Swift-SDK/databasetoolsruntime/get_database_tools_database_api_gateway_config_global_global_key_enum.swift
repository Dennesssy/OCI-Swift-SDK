import Foundation

// MARK: - GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum

public enum GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum: String, Codable, Sendable {
    case settings = "SETTINGS"
}

public extension GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum {
    static var allValues: [GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum] { [.settings] }
    static var allStringValues: [String] { ["SETTINGS"] }
    static func fromString(_ value: String) -> GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum? { GetDatabaseToolsDatabaseApiGatewayConfigGlobalGlobalKeyEnum(rawValue: value) }
}