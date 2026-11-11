import Foundation

// MARK: - UpdatePropertySetPropertySetKeyEnum

public enum UpdatePropertySetPropertySetKeyEnum: String, Codable, Sendable {
    case apexDocumentGenerator = "APEX_DOCUMENT_GENERATOR"
    case apex = "APEX"
    case apexFaIntegration = "APEX_FA_INTEGRATION"
    case oracleDatabaseExternalAuthentication = "ORACLE_DATABASE_EXTERNAL_AUTHENTICATION"
}

public extension UpdatePropertySetPropertySetKeyEnum {
    static var allValues: [UpdatePropertySetPropertySetKeyEnum] { [.apexDocumentGenerator, .apex, .apexFaIntegration, .oracleDatabaseExternalAuthentication] }
    static var allStringValues: [String] { ["APEX_DOCUMENT_GENERATOR", "APEX", "APEX_FA_INTEGRATION", "ORACLE_DATABASE_EXTERNAL_AUTHENTICATION"] }
    static func fromString(_ value: String) -> UpdatePropertySetPropertySetKeyEnum? { UpdatePropertySetPropertySetKeyEnum(rawValue: value) }
}