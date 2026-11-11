import Foundation

// MARK: - CostAlertSubscriptionMapOperatorEnum

public enum CostAlertSubscriptionMapOperatorEnum: String, Codable, Sendable {
    case and = "AND"
    case or = "OR"
}

public extension CostAlertSubscriptionMapOperatorEnum {
    static var allValues: [CostAlertSubscriptionMapOperatorEnum] { [.and, .or] }
    static var allStringValues: [String] { ["AND", "OR"] }
    static func fromString(_ value: String) -> CostAlertSubscriptionMapOperatorEnum? { CostAlertSubscriptionMapOperatorEnum(rawValue: value) }
}