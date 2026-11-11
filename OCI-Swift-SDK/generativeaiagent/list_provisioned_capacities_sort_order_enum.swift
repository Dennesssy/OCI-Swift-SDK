import Foundation

// MARK: - ListProvisionedCapacitiesSortOrderEnum

public enum ListProvisionedCapacitiesSortOrderEnum: String, Codable, Sendable {
    case asc = "ASC"
    case desc = "DESC"
}

public extension ListProvisionedCapacitiesSortOrderEnum {
    static var allValues: [ListProvisionedCapacitiesSortOrderEnum] { [.asc, .desc] }
    static var allStringValues: [String] { ["ASC", "DESC"] }
    static func fromString(_ value: String) -> ListProvisionedCapacitiesSortOrderEnum? { ListProvisionedCapacitiesSortOrderEnum(rawValue: value) }
}