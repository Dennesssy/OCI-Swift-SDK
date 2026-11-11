import Foundation

// MARK: - BatchTaskTypeEnum

public enum BatchTaskTypeEnum: String, Codable, Sendable {
    case compute = "COMPUTE"
    case group = "GROUP"
}

public extension BatchTaskTypeEnum {
    static var allValues: [BatchTaskTypeEnum] { [.compute, .group] }
    static var allStringValues: [String] { ["COMPUTE", "GROUP"] }
    static func fromString(_ value: String) -> BatchTaskTypeEnum? { BatchTaskTypeEnum(rawValue: value) }
}