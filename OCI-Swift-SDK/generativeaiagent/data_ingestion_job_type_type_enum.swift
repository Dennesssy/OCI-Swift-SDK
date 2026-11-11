import Foundation

// MARK: - DataIngestionJobTypeTypeEnum

public enum DataIngestionJobTypeTypeEnum: String, Codable, Sendable {
    case cleanup = "CLEANUP"
    case ingestion = "INGESTION"
}

public extension DataIngestionJobTypeTypeEnum {
    static var allValues: [DataIngestionJobTypeTypeEnum] { [.cleanup, .ingestion] }
    static var allStringValues: [String] { ["CLEANUP", "INGESTION"] }
    static func fromString(_ value: String) -> DataIngestionJobTypeTypeEnum? { DataIngestionJobTypeTypeEnum(rawValue: value) }
}