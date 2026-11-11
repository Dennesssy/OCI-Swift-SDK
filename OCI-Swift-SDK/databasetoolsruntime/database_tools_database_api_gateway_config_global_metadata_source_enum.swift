import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum

public enum DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum: String, Codable, Sendable {
    case database = "DATABASE"
    case cloud = "CLOUD"
}

public extension DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum] { [.database, .cloud] }
    static var allStringValues: [String] { ["DATABASE", "CLOUD"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum? { DatabaseToolsDatabaseApiGatewayConfigGlobalMetadataSourceEnum(rawValue: value) }
}