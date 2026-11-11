import Foundation

// MARK: - QuotaOperationOnBreachEnum

public enum QuotaOperationOnBreachEnum: String, Codable, Sendable {
    case reject = "REJECT"
    case allow = "ALLOW"
}

public extension QuotaOperationOnBreachEnum {
    static var allValues: [QuotaOperationOnBreachEnum] { [.reject, .allow] }
    static var allStringValues: [String] { ["REJECT", "ALLOW"] }
    static func fromString(_ value: String) -> QuotaOperationOnBreachEnum? { QuotaOperationOnBreachEnum(rawValue: value) }
}