import Foundation

// MARK: - ListPsaServicesSortByEnum

public enum ListPsaServicesSortByEnum: String, Codable, Sendable {
    case displayname = "displayName"
}

public extension ListPsaServicesSortByEnum {
    static var allValues: [ListPsaServicesSortByEnum] { [.displayname] }
    static var allStringValues: [String] { ["displayName"] }
    static func fromString(_ value: String) -> ListPsaServicesSortByEnum? { ListPsaServicesSortByEnum(rawValue: value) }
}