import Foundation

// MARK: - IdentityTypeEnum

public enum IdentityTypeEnum: String, Codable, Sendable {
    case oracleDatabaseResourcePrincipal = "ORACLE_DATABASE_RESOURCE_PRINCIPAL"
}

public extension IdentityTypeEnum {
    static var allValues: [IdentityTypeEnum] { [.oracleDatabaseResourcePrincipal] }
    static var allStringValues: [String] { ["ORACLE_DATABASE_RESOURCE_PRINCIPAL"] }
    static func fromString(_ value: String) -> IdentityTypeEnum? { IdentityTypeEnum(rawValue: value) }
}