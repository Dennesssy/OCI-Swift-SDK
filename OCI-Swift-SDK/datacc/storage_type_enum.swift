import Foundation

// MARK: - StorageTypeEnum

public enum StorageTypeEnum: String, Codable, Sendable {
    case highCapacity = "HIGH_CAPACITY"
    case extended = "EXTENDED"
    case extremeFlash = "EXTREME_FLASH"
}

public extension StorageTypeEnum {
    static var allValues: [StorageTypeEnum] { [.highCapacity, .extended, .extremeFlash] }
    static var allStringValues: [String] { ["HIGH_CAPACITY", "EXTENDED", "EXTREME_FLASH"] }
    static func fromString(_ value: String) -> StorageTypeEnum? { StorageTypeEnum(rawValue: value) }
}