import Foundation

// MARK: - ListApiPlatformInstancesSortByEnum

public enum ListApiPlatformInstancesSortByEnum: String, Codable, Sendable {
    case name = "name"
    case timecreated = "timeCreated"
}

public extension ListApiPlatformInstancesSortByEnum {
    static var allValues: [ListApiPlatformInstancesSortByEnum] { [.name, .timecreated] }
    static var allStringValues: [String] { ["name", "timeCreated"] }
    static func fromString(_ value: String) -> ListApiPlatformInstancesSortByEnum? { ListApiPlatformInstancesSortByEnum(rawValue: value) }
}