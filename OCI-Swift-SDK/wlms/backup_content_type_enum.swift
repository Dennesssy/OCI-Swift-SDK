import Foundation

// MARK: - BackupContentTypeEnum

public enum BackupContentTypeEnum: String, Codable, Sendable {
    case binary = "BINARY"
}

public extension BackupContentTypeEnum {
    static var allValues: [BackupContentTypeEnum] { [.binary] }
    static var allStringValues: [String] { ["BINARY"] }
    static func fromString(_ value: String) -> BackupContentTypeEnum? { BackupContentTypeEnum(rawValue: value) }
}