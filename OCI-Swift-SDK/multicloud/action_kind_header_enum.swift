import Foundation

// MARK: - ActionKindHeaderEnum

public enum ActionKindHeaderEnum: String, Codable, Sendable {
    case create = "create"
    case update = "update"
}

public extension ActionKindHeaderEnum {
    static var allValues: [ActionKindHeaderEnum] { [.create, .update] }
    static var allStringValues: [String] { ["create", "update"] }
    static func fromString(_ value: String) -> ActionKindHeaderEnum? { ActionKindHeaderEnum(rawValue: value) }
}