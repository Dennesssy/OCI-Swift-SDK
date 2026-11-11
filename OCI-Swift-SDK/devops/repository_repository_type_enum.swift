import Foundation

// MARK: - RepositoryRepositoryTypeEnum

public enum RepositoryRepositoryTypeEnum: String, Codable, Sendable {
    case mirrored = "MIRRORED"
    case hosted = "HOSTED"
    case forked = "FORKED"
}

public extension RepositoryRepositoryTypeEnum {
    static var allValues: [RepositoryRepositoryTypeEnum] { [.mirrored, .hosted, .forked] }
    static var allStringValues: [String] { ["MIRRORED", "HOSTED", "FORKED"] }
    static func fromString(_ value: String) -> RepositoryRepositoryTypeEnum? { RepositoryRepositoryTypeEnum(rawValue: value) }
}