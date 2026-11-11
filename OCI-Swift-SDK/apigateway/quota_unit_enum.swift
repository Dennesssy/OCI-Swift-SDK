import Foundation

// MARK: - QuotaUnitEnum

public enum QuotaUnitEnum: String, Codable, Sendable {
    case minute = "MINUTE"
    case hour = "HOUR"
    case day = "DAY"
    case week = "WEEK"
    case month = "MONTH"
}

public extension QuotaUnitEnum {
    static var allValues: [QuotaUnitEnum] { [.minute, .hour, .day, .week, .month] }
    static var allStringValues: [String] { ["MINUTE", "HOUR", "DAY", "WEEK", "MONTH"] }
    static func fromString(_ value: String) -> QuotaUnitEnum? { QuotaUnitEnum(rawValue: value) }
}