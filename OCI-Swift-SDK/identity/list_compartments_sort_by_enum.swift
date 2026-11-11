import Foundation

// MARK: - ListCompartmentsSortByEnum

public enum ListCompartmentsSortByEnum: String, Codable, Sendable {
    case timecreated = "TIMECREATED"
    case name = "NAME"
}

public extension ListCompartmentsSortByEnum {
    static var allValues: [ListCompartmentsSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["TIMECREATED", "NAME"] }
    static func fromString(_ value: String) -> ListCompartmentsSortByEnum? { ListCompartmentsSortByEnum(rawValue: value) }
}