import Foundation

// MARK: - ListWlsDomainServerInstalledPatchesSortOrderEnum

public enum ListWlsDomainServerInstalledPatchesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainServerInstalledPatchesSortOrderEnum {
    static var allValues: [ListWlsDomainServerInstalledPatchesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainServerInstalledPatchesSortOrderEnum? { ListWlsDomainServerInstalledPatchesSortOrderEnum(rawValue: value) }
}