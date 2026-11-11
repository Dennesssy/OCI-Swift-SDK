import Foundation

// MARK: - PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum

public enum PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum: String, Codable, Sendable {
    case enabled = "ENABLED"
    case disabled = "DISABLED"
}

public extension PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum {
    static var allValues: [PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum] { [.enabled, .disabled] }
    static var allStringValues: [String] { ["ENABLED", "DISABLED"] }
    static func fromString(_ value: String) -> PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum? { PropertySetApexDocumentGeneratorAutonomousDatabaseResourcePrincipalStatusEnum(rawValue: value) }
}