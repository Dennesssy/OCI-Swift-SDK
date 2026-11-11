import Foundation

// MARK: - ListSandboxCommandSortByEnum

public enum ListSandboxCommandSortByEnum: String, Codable, Sendable {
    case timecreated = "timeCreated"
    case timestarted = "timeStarted"
    case timefinished = "timeFinished"
}

public extension ListSandboxCommandSortByEnum {
    static var allValues: [ListSandboxCommandSortByEnum] { [.timecreated, .timestarted, .timefinished] }
    static var allStringValues: [String] { ["timeCreated", "timeStarted", "timeFinished"] }
    static func fromString(_ value: String) -> ListSandboxCommandSortByEnum? { ListSandboxCommandSortByEnum(rawValue: value) }
}