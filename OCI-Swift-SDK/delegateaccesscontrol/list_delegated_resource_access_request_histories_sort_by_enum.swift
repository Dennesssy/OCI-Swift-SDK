import Foundation

// MARK: - ListDelegatedResourceAccessRequestHistoriesSortByEnum

public enum ListDelegatedResourceAccessRequestHistoriesSortByEnum: String, Codable, Sendable {
    case timestamp = "timestamp"
}

public extension ListDelegatedResourceAccessRequestHistoriesSortByEnum {
    static var allValues: [ListDelegatedResourceAccessRequestHistoriesSortByEnum] { [.timestamp] }
    static var allStringValues: [String] { ["timestamp"] }
    static func fromString(_ value: String) -> ListDelegatedResourceAccessRequestHistoriesSortByEnum? { ListDelegatedResourceAccessRequestHistoriesSortByEnum(rawValue: value) }
}