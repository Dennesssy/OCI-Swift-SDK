import Foundation

// MARK: - OutputLocationOutputLocationTypeEnum

public enum OutputLocationOutputLocationTypeEnum: String, Codable, Sendable {
    case objectStoragePrefix = "OBJECT_STORAGE_PREFIX"
}

public extension OutputLocationOutputLocationTypeEnum {
    static var allValues: [OutputLocationOutputLocationTypeEnum] { [.objectStoragePrefix] }
    static var allStringValues: [String] { ["OBJECT_STORAGE_PREFIX"] }
    static func fromString(_ value: String) -> OutputLocationOutputLocationTypeEnum? { OutputLocationOutputLocationTypeEnum(rawValue: value) }
}