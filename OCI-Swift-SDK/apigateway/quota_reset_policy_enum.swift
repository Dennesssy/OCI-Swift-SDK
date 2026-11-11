import Foundation

// MARK: - QuotaResetPolicyEnum

public enum QuotaResetPolicyEnum: String, Codable, Sendable {
    case calendar = "CALENDAR"
}

public extension QuotaResetPolicyEnum {
    static var allValues: [QuotaResetPolicyEnum] { [.calendar] }
    static var allStringValues: [String] { ["CALENDAR"] }
    static func fromString(_ value: String) -> QuotaResetPolicyEnum? { QuotaResetPolicyEnum(rawValue: value) }
}