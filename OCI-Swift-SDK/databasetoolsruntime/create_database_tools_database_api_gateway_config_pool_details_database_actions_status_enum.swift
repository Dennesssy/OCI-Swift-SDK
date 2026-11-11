import Foundation

// MARK: - CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum

public enum CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum {
    static var allValues: [CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum? { CreateDatabaseToolsDatabaseApiGatewayConfigPoolDetailsDatabaseActionsStatusEnum(rawValue: value) }
}