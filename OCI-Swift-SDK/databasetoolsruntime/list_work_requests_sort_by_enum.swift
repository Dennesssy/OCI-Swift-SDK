import Foundation

// MARK: - ListWorkRequestsSortByEnum

public enum ListWorkRequestsSortByEnum: String, Codable, Sendable {
    case timeaccepted = "timeAccepted"
    case timeupdated = "timeUpdated"
    case timefinished = "timeFinished"
}

public extension ListWorkRequestsSortByEnum {
    static var allValues: [ListWorkRequestsSortByEnum] { [.timeaccepted, .timeupdated, .timefinished] }
    static var allStringValues: [String] { ["timeAccepted", "timeUpdated", "timeFinished"] }
    static func fromString(_ value: String) -> ListWorkRequestsSortByEnum? { ListWorkRequestsSortByEnum(rawValue: value) }
}