import Foundation

// MARK: - ListBatchJobTasksSortByEnum

public enum ListBatchJobTasksSortByEnum: String, Codable, Sendable {
    case name = "name"
}

public extension ListBatchJobTasksSortByEnum {
    static var allValues: [ListBatchJobTasksSortByEnum] { [.name] }
    static var allStringValues: [String] { ["name"] }
    static func fromString(_ value: String) -> ListBatchJobTasksSortByEnum? { ListBatchJobTasksSortByEnum(rawValue: value) }
}