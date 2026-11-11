import Foundation

// MARK: - RepositoryRepositoryTypeEnum

public enum RepositoryRepositoryTypeEnum: String, Codable, Sendable {
    case generic = "GENERIC"
}

public extension RepositoryRepositoryTypeEnum {
    static var allValues: [RepositoryRepositoryTypeEnum] { [.generic] }
    static var allStringValues: [String] { ["GENERIC"] }
    static func fromString(_ value: String) -> RepositoryRepositoryTypeEnum? { RepositoryRepositoryTypeEnum(rawValue: value) }
}