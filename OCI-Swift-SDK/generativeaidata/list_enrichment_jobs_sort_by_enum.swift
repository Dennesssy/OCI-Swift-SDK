import Foundation

// MARK: - ListEnrichmentJobsSortByEnum

public enum ListEnrichmentJobsSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case displayname = "displayName"
}

public extension ListEnrichmentJobsSortByEnum {
    static var allValues: [ListEnrichmentJobsSortByEnum] { [.timecreated, .displayname] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> ListEnrichmentJobsSortByEnum? { ListEnrichmentJobsSortByEnum(rawValue: value) }
}