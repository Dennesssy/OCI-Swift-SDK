import Foundation

// MARK: - ListIdentityProvidersSortOrderEnum

public enum ListIdentityProvidersSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIdentityProvidersSortOrderEnum {
    static var allValues: [ListIdentityProvidersSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIdentityProvidersSortOrderEnum? { ListIdentityProvidersSortOrderEnum(rawValue: value) }
}