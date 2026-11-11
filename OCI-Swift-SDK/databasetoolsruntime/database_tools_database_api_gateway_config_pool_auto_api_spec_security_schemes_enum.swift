import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum: String, Codable, Sendable {
    case basic = "BASIC"
    case bearer = "BEARER"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum] { [.basic, .bearer] }
    static var allStringValues: [String] { ["BASIC", "BEARER"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecSecuritySchemesEnum(rawValue: value) }
}