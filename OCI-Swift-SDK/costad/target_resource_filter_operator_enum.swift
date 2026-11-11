import Foundation

// MARK: - TargetResourceFilterOperatorEnum

public enum TargetResourceFilterOperatorEnum: String, Codable, Sendable {
    case and = "AND"
    case or = "OR"
}

public extension TargetResourceFilterOperatorEnum {
    static var allValues: [TargetResourceFilterOperatorEnum] { [.and, .or] }
    static var allStringValues: [String] { ["AND", "OR"] }
    static func fromString(_ value: String) -> TargetResourceFilterOperatorEnum? { TargetResourceFilterOperatorEnum(rawValue: value) }
}