import Foundation

// MARK: - ListAgreementRecordsSortOrderEnum

public enum ListAgreementRecordsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListAgreementRecordsSortOrderEnum {
    static var allValues: [ListAgreementRecordsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListAgreementRecordsSortOrderEnum? { ListAgreementRecordsSortOrderEnum(rawValue: value) }
}