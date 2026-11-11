import Foundation

// MARK: - ListTenancyAttachmentsSortOrderEnum

public enum ListTenancyAttachmentsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListTenancyAttachmentsSortOrderEnum {
    static var allValues: [ListTenancyAttachmentsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListTenancyAttachmentsSortOrderEnum? { ListTenancyAttachmentsSortOrderEnum(rawValue: value) }
}