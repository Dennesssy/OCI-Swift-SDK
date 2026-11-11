import Foundation

// MARK: - ListMfaTotpDevicesSortByEnum

public enum ListMfaTotpDevicesSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListMfaTotpDevicesSortByEnum {
    static var allValues: [ListMfaTotpDevicesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListMfaTotpDevicesSortByEnum? { ListMfaTotpDevicesSortByEnum(rawValue: value) }
}