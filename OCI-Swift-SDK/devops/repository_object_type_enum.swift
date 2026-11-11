import Foundation

// MARK: - RepositoryObjectTypeEnum

public enum RepositoryObjectTypeEnum: String, Codable, Sendable {
    case blob = "BLOB"
    case tree = "TREE"
    case commit = "COMMIT"
}

public extension RepositoryObjectTypeEnum {
    static var allValues: [RepositoryObjectTypeEnum] { [.blob, .tree, .commit] }
    static var allStringValues: [String] { ["BLOB", "TREE", "COMMIT"] }
    static func fromString(_ value: String) -> RepositoryObjectTypeEnum? { RepositoryObjectTypeEnum(rawValue: value) }
}