import Foundation

// MARK: - MaintenanceWindowMonthsEnum

public enum MaintenanceWindowMonthsEnum: String, Codable, Sendable {
    case january = "JANUARY"
    case february = "FEBRUARY"
    case march = "MARCH"
    case april = "APRIL"
    case may = "MAY"
    case june = "JUNE"
    case july = "JULY"
    case august = "AUGUST"
    case september = "SEPTEMBER"
    case october = "OCTOBER"
    case november = "NOVEMBER"
    case december = "DECEMBER"
}

public extension MaintenanceWindowMonthsEnum {
    static var allValues: [MaintenanceWindowMonthsEnum] { [.january, .february, .march, .april, .may, .june, .july, .august, .september, .october, .november, .december] }
    static var allStringValues: [String] { ["JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER"] }
    static func fromString(_ value: String) -> MaintenanceWindowMonthsEnum? { MaintenanceWindowMonthsEnum(rawValue: value) }
}