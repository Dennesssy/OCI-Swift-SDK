import Foundation

// MARK: - ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum

public enum ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum: String, Codable, Sendable {
    case standard = "STANDARD"
    case infrequentAccess = "INFREQUENT_ACCESS"
    case archive = "ARCHIVE"
}

public extension ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum {
    static var allValues: [ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum] { [.standard, .infrequentAccess, .archive] }
    static var allStringValues: [String] { ["STANDARD", "INFREQUENT_ACCESS", "ARCHIVE"] }
    static func fromString(_ value: String) -> ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum? { ExecuteSqlOutputDispositionObjectStorageDetailsStorageTierEnum(rawValue: value) }
}