import Foundation

// MARK: - ListIotFlowRuntimesSortOrderEnum

public enum ListIotFlowRuntimesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListIotFlowRuntimesSortOrderEnum {
    static var allValues: [ListIotFlowRuntimesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListIotFlowRuntimesSortOrderEnum? { ListIotFlowRuntimesSortOrderEnum(rawValue: value) }
}