import Foundation

// MARK: - ListApplicablePatchesSortByEnum

public enum ListApplicablePatchesSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
}

public extension ListApplicablePatchesSortByEnum {
    static var allValues: [ListApplicablePatchesSortByEnum] { [.displayname] }
    static var allStringValues: [String] { ["displayName"] }
    static func fromString(_ value: String) -> ListApplicablePatchesSortByEnum? { ListApplicablePatchesSortByEnum(rawValue: value) }
}