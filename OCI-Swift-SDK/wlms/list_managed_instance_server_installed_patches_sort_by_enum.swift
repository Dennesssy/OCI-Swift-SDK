import Foundation

// MARK: - ListManagedInstanceServerInstalledPatchesSortByEnum

public enum ListManagedInstanceServerInstalledPatchesSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
}

public extension ListManagedInstanceServerInstalledPatchesSortByEnum {
    static var allValues: [ListManagedInstanceServerInstalledPatchesSortByEnum] { [.displayname] }
    static var allStringValues: [String] { ["displayName"] }
    static func fromString(_ value: String) -> ListManagedInstanceServerInstalledPatchesSortByEnum? { ListManagedInstanceServerInstalledPatchesSortByEnum(rawValue: value) }
}