import Foundation

// MARK: - ListServiceProviderActionsSortOrderEnum

public enum ListServiceProviderActionsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListServiceProviderActionsSortOrderEnum {
    static var allValues: [ListServiceProviderActionsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListServiceProviderActionsSortOrderEnum? { ListServiceProviderActionsSortOrderEnum(rawValue: value) }
}