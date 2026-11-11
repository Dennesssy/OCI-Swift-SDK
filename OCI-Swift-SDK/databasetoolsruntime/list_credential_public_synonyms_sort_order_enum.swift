import Foundation

// MARK: - ListCredentialPublicSynonymsSortOrderEnum

public enum ListCredentialPublicSynonymsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCredentialPublicSynonymsSortOrderEnum {
    static var allValues: [ListCredentialPublicSynonymsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCredentialPublicSynonymsSortOrderEnum? { ListCredentialPublicSynonymsSortOrderEnum(rawValue: value) }
}