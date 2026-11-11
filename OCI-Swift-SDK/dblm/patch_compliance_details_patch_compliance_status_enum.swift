import Foundation

// MARK: - PatchComplianceDetailsPatchComplianceStatusEnum

public enum PatchComplianceDetailsPatchComplianceStatusEnum: String, Codable, Sendable {
    case green = "GREEN"
    case yellow = "YELLOW"
    case red = "RED"
}

public extension PatchComplianceDetailsPatchComplianceStatusEnum {
    static var allValues: [PatchComplianceDetailsPatchComplianceStatusEnum] { [.green, .yellow, .red] }
    static var allStringValues: [String] { ["GREEN", "YELLOW", "RED"] }
    static func fromString(_ value: String) -> PatchComplianceDetailsPatchComplianceStatusEnum? { PatchComplianceDetailsPatchComplianceStatusEnum(rawValue: value) }
}