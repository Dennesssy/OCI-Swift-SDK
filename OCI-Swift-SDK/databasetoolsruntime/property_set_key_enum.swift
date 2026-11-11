import Foundation

// MARK: - PropertySetKeyEnum

public enum PropertySetKeyEnum: String, Codable, Sendable {
    case apexDocumentGenerator = "APEX_DOCUMENT_GENERATOR"
    case apex = "APEX"
    case apexFaIntegration = "APEX_FA_INTEGRATION"
    case oracleDatabaseExternalAuthentication = "ORACLE_DATABASE_EXTERNAL_AUTHENTICATION"
}

public extension PropertySetKeyEnum {
    static var allValues: [PropertySetKeyEnum] { [.apexDocumentGenerator, .apex, .apexFaIntegration, .oracleDatabaseExternalAuthentication] }
    static var allStringValues: [String] { ["APEX_DOCUMENT_GENERATOR", "APEX", "APEX_FA_INTEGRATION", "ORACLE_DATABASE_EXTERNAL_AUTHENTICATION"] }
    static func fromString(_ value: String) -> PropertySetKeyEnum? { PropertySetKeyEnum(rawValue: value) }
}