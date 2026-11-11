import Foundation

// MARK: - ListZprPoliciesSortByEnum

public enum ListZprPoliciesSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case name = "name"
}

public extension ListZprPoliciesSortByEnum {
    static var allValues: [ListZprPoliciesSortByEnum] { [.timecreated, .name] }
    static var allStringValues: [String] { ["timeCreated", "name"] }
    static func fromString(_ value: String) -> ListZprPoliciesSortByEnum? { ListZprPoliciesSortByEnum(rawValue: value) }
}