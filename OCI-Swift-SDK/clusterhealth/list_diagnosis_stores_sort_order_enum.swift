import Foundation

// MARK: - ListDiagnosisStoresSortOrderEnum

public enum ListDiagnosisStoresSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListDiagnosisStoresSortOrderEnum {
    static var allValues: [ListDiagnosisStoresSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListDiagnosisStoresSortOrderEnum? { ListDiagnosisStoresSortOrderEnum(rawValue: value) }
}