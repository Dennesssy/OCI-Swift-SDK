import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum: String, Codable, Sendable {
    case path = "PATH"
    case header = "HEADER"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum] { [.path, .header] }
    static var allStringValues: [String] { ["PATH", "HEADER"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsPoolRouteEnum(rawValue: value) }
}