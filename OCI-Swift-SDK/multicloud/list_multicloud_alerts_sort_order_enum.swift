import Foundation

// MARK: - ListMulticloudAlertsSortOrderEnum

public enum ListMulticloudAlertsSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListMulticloudAlertsSortOrderEnum {
    static var allValues: [ListMulticloudAlertsSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListMulticloudAlertsSortOrderEnum? { ListMulticloudAlertsSortOrderEnum(rawValue: value) }
}