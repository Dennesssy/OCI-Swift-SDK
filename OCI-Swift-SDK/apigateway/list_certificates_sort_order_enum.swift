import Foundation

// MARK: - ListCertificatesSortOrderEnum

public enum ListCertificatesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListCertificatesSortOrderEnum {
    static var allValues: [ListCertificatesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListCertificatesSortOrderEnum? { ListCertificatesSortOrderEnum(rawValue: value) }
}