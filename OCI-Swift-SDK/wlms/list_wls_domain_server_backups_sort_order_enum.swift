import Foundation

// MARK: - ListWlsDomainServerBackupsSortOrderEnum

public enum ListWlsDomainServerBackupsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListWlsDomainServerBackupsSortOrderEnum {
    static var allValues: [ListWlsDomainServerBackupsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListWlsDomainServerBackupsSortOrderEnum? { ListWlsDomainServerBackupsSortOrderEnum(rawValue: value) }
}