import Foundation

// MARK: - InputLocationInputLocationTypeEnum

public enum InputLocationInputLocationTypeEnum: String, Codable, Sendable {
    case inline = "INLINE"
    case objectStoragePrefix = "OBJECT_STORAGE_PREFIX"
}

public extension InputLocationInputLocationTypeEnum {
    static var allValues: [InputLocationInputLocationTypeEnum] { [.inline, .objectStoragePrefix] }
    static var allStringValues: [String] { ["INLINE", "OBJECT_STORAGE_PREFIX"] }
    static func fromString(_ value: String) -> InputLocationInputLocationTypeEnum? { InputLocationInputLocationTypeEnum(rawValue: value) }
}