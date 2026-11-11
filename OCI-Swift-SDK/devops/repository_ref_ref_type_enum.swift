import Foundation

// MARK: - RepositoryRefRefTypeEnum

public enum RepositoryRefRefTypeEnum: String, Codable, Sendable {
    case branch = "BRANCH"
    case tag = "TAG"
}

public extension RepositoryRefRefTypeEnum {
    static var allValues: [RepositoryRefRefTypeEnum] { [.branch, .tag] }
    static var allStringValues: [String] { ["BRANCH", "TAG"] }
    static func fromString(_ value: String) -> RepositoryRefRefTypeEnum? { RepositoryRefRefTypeEnum(rawValue: value) }
}