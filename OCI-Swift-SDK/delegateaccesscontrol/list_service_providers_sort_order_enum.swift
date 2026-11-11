import Foundation

// MARK: - ListServiceProvidersSortOrderEnum

public enum ListServiceProvidersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListServiceProvidersSortOrderEnum {
    static var allValues: [ListServiceProvidersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListServiceProvidersSortOrderEnum? { ListServiceProvidersSortOrderEnum(rawValue: value) }
}