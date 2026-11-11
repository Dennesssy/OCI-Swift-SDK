import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum

public enum DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum: String, Codable, Sendable {
    case path = "PATH"
    case header = "HEADER"
}

public extension DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum] { [.path, .header] }
    static var allStringValues: [String] { ["PATH", "HEADER"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum? { DatabaseToolsDatabaseApiGatewayConfigGlobalPoolRouteEnum(rawValue: value) }
}