import Foundation

// MARK: - BackupTypeEnum

public enum BackupTypeEnum: String, Codable, Sendable {
    case localFile = "LOCAL_FILE"
}

public extension BackupTypeEnum {
    static var allValues: [BackupTypeEnum] { [.localFile] }
    static var allStringValues: [String] { ["LOCAL_FILE"] }
    static func fromString(_ value: String) -> BackupTypeEnum? { BackupTypeEnum(rawValue: value) }
}