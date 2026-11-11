import Foundation

// MARK: - ListManagedInstanceServerInstalledPatchesSortOrderEnum

public enum ListManagedInstanceServerInstalledPatchesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListManagedInstanceServerInstalledPatchesSortOrderEnum {
    static var allValues: [ListManagedInstanceServerInstalledPatchesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListManagedInstanceServerInstalledPatchesSortOrderEnum? { ListManagedInstanceServerInstalledPatchesSortOrderEnum(rawValue: value) }
}