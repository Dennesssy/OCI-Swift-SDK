import Foundation

// MARK: - PutRepositoryRefDetailsRefTypeEnum

public enum PutRepositoryRefDetailsRefTypeEnum: String, Codable, Sendable {
    case branch = "BRANCH"
    case tag = "TAG"
}

public extension PutRepositoryRefDetailsRefTypeEnum {
    static var allValues: [PutRepositoryRefDetailsRefTypeEnum] { [.branch, .tag] }
    static var allStringValues: [String] { ["BRANCH", "TAG"] }
    static func fromString(_ value: String) -> PutRepositoryRefDetailsRefTypeEnum? { PutRepositoryRefDetailsRefTypeEnum(rawValue: value) }
}