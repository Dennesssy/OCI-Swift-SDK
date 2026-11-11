import Foundation

// MARK: - ListSdkLanguageTypesSortOrderEnum

public enum ListSdkLanguageTypesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListSdkLanguageTypesSortOrderEnum {
    static var allValues: [ListSdkLanguageTypesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListSdkLanguageTypesSortOrderEnum? { ListSdkLanguageTypesSortOrderEnum(rawValue: value) }
}