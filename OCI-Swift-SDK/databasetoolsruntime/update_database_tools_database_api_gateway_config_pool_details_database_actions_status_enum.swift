import Foundation

// MARK: - UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum

public enum UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum {
    static var allValues: [UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum? { UpdateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum(rawValue: value) }
}