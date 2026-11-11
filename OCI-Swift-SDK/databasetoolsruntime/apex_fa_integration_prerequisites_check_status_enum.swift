import Foundation

// MARK: - ApexFaIntegrationPrerequisitesCheckStatusEnum

public enum ApexFaIntegrationPrerequisitesCheckStatusEnum: String, Codable, Sendable {
    case pass = "PASS"
    case fail = "FAIL"
    case error = "ERROR"
    case unknown = "UNKNOWN"
}

public extension ApexFaIntegrationPrerequisitesCheckStatusEnum {
    static var allValues: [ApexFaIntegrationPrerequisitesCheckStatusEnum] { [.pass, .fail, .error, .unknown] }
    static var allStringValues: [String] { ["PASS", "FAIL", "ERROR", "UNKNOWN"] }
    static func fromString(_ value: String) -> ApexFaIntegrationPrerequisitesCheckStatusEnum? { ApexFaIntegrationPrerequisitesCheckStatusEnum(rawValue: value) }
}