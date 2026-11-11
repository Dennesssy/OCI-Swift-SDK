import Foundation

// MARK: - BatchTaskSortByEnum

public enum BatchTaskSortByEnum: String, Codable, Sendable {
    case name = "name"
}

public extension BatchTaskSortByEnum {
    static var allValues: [BatchTaskSortByEnum] { [.name] }
    static var allStringValues: [String] { ["name"] }
    static func fromString(_ value: String) -> BatchTaskSortByEnum? { BatchTaskSortByEnum(rawValue: value) }
}