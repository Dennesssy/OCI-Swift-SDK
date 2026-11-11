import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum: String, Codable, Sendable {
    case basic = "BASIC"
    case bearer = "BEARER"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum] { [.basic, .bearer] }
    static var allStringValues: [String] { ["BASIC", "BEARER"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum(rawValue: value) }
}