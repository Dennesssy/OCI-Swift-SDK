import Foundation

// MARK: - StorageDiskRedundancyEnum

public enum StorageDiskRedundancyEnum: String, Codable, Sendable {
    case high = "HIGH"
    case mirror = "MIRROR"
    case flex = "FLEX"
}

public extension StorageDiskRedundancyEnum {
    static var allValues: [StorageDiskRedundancyEnum] { [.high, .mirror, .flex] }
    static var allStringValues: [String] { ["HIGH", "MIRROR", "FLEX"] }
    static func fromString(_ value: String) -> StorageDiskRedundancyEnum? { StorageDiskRedundancyEnum(rawValue: value) }
}