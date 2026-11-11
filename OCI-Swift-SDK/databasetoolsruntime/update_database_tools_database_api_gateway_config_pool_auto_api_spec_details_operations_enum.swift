import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum: String, Codable, Sendable {
    case read = "READ"
    case write = "WRITE"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum] { [.read, .write] }
    static var allStringValues: [String] { ["READ", "WRITE"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDetailsOperationsEnum(rawValue: value) }
}