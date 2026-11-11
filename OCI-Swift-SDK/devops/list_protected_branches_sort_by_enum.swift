import Foundation

// MARK: - ListProtectedBranchesSortByEnum

public enum ListProtectedBranchesSortByEnum: String, Codable, Sendable {
    case branchname = "branchName"
}

public extension ListProtectedBranchesSortByEnum {
    static var allValues: [ListProtectedBranchesSortByEnum] { [.branchname] }
    static var allStringValues: [String] { ["branchName"] }
    static func fromString(_ value: String) -> ListProtectedBranchesSortByEnum? { ListProtectedBranchesSortByEnum(rawValue: value) }
}