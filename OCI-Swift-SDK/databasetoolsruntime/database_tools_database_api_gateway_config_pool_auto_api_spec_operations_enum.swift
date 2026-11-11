import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum

public enum DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum: String, Codable, Sendable {
    case read = "READ"
    case write = "WRITE"
}

public extension DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum {
    static var allValues: [DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum] { [.read, .write] }
    static var allStringValues: [String] { ["READ", "WRITE"] }
    static func fromString(_ value: String) -> DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum? { DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecOperationsEnum(rawValue: value) }
}