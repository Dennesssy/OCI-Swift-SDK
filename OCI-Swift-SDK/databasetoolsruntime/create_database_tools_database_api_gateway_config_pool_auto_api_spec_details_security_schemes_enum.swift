import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum

public enum CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum: String, Codable, Sendable {
    case basic = "BASIC"
    case bearer = "BEARER"
}

public extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum {
    static var allValues: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum] { [.basic, .bearer] }
    static var allStringValues: [String] { ["BASIC", "BEARER"] }
    static func fromString(_ value: String) -> CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum? { CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsSecuritySchemesEnum(rawValue: value) }
}