import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigGlobalDetailsDatabaseApiStatusEnum(rawValue: value) }
}