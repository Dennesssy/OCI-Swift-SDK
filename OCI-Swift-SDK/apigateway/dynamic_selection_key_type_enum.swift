import Foundation

// MARK: - DynamicSelectionKeyTypeEnum

public enum DynamicSelectionKeyTypeEnum: String, Codable, Sendable {
    case anyOf = "ANY_OF"
    case wildcard = "WILDCARD"
}

public extension DynamicSelectionKeyTypeEnum {
    static var allValues: [DynamicSelectionKeyTypeEnum] { [.anyOf, .wildcard] }
    static var allStringValues: [String] { ["ANY_OF", "WILDCARD"] }
    static func fromString(_ value: String) -> DynamicSelectionKeyTypeEnum? { DynamicSelectionKeyTypeEnum(rawValue: value) }
}