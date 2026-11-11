import Foundation

// MARK: - ListBatchTasksSortByEnum

public enum ListBatchTasksSortByEnum: String, Codable, Sendable {
    case name = "name"
}

public extension ListBatchTasksSortByEnum {
    static var allValues: [ListBatchTasksSortByEnum] { [.name] }
    static var allStringValues: [String] { ["name"] }
    static func fromString(_ value: String) -> ListBatchTasksSortByEnum? { ListBatchTasksSortByEnum(rawValue: value) }
}