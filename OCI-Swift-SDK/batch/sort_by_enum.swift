import Foundation

// MARK: - SortByEnum

public enum SortByEnum: String, Codable, Sendable {
    case timeCreated = "timeCreated"
    case displayName = "displayName"
}

public extension SortByEnum {
    static var allValues: [SortByEnum] { [.timeCreated, .displayName] }
    static var allStringValues: [String] { ["timeCreated", "displayName"] }
    static func fromString(_ value: String) -> SortByEnum? { SortByEnum(rawValue: value) }
}