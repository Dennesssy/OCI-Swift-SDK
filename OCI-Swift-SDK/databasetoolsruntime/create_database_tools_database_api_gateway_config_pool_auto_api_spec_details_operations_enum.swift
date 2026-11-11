import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum

public enum CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum: String, Codable, Sendable {
    case read = "READ"
    case write = "WRITE"
}

public extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum {
    static var allValues: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum] { [.read, .write] }
    static var allStringValues: [String] { ["READ", "WRITE"] }
    static func fromString(_ value: String) -> CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum? { CreateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum(rawValue: value) }
}