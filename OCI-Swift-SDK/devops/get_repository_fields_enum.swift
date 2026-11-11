import Foundation

// MARK: - GetRepositoryFieldsEnum

public enum GetRepositoryFieldsEnum: String, Codable, Sendable {
    case branchcount = "branchCount"
    case commitcount = "commitCount"
    case sizeinbytes = "sizeInBytes"
}

public extension GetRepositoryFieldsEnum {
    static var allValues: [GetRepositoryFieldsEnum] { [.branchcount, .commitcount, .sizeinbytes] }
    static var allStringValues: [String] { ["branchCount", "commitCount", "sizeInBytes"] }
    static func fromString(_ value: String) -> GetRepositoryFieldsEnum? { GetRepositoryFieldsEnum(rawValue: value) }
}