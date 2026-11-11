import Foundation

// MARK: - ListWlsDomainServerInstalledPatchesSortByEnum

public enum ListWlsDomainServerInstalledPatchesSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
}

public extension ListWlsDomainServerInstalledPatchesSortByEnum {
    static var allValues: [ListWlsDomainServerInstalledPatchesSortByEnum] { [.displayname] }
    static var allStringValues: [String] { ["displayName"] }
    static func fromString(_ value: String) -> ListWlsDomainServerInstalledPatchesSortByEnum? { ListWlsDomainServerInstalledPatchesSortByEnum(rawValue: value) }
}