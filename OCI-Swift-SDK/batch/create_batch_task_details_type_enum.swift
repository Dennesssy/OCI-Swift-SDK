import Foundation

// MARK: - CreateBatchTaskDetailsTypeEnum

public enum CreateBatchTaskDetailsTypeEnum: String, Codable, Sendable {
    case compute = "COMPUTE"
    case group = "GROUP"
}

public extension CreateBatchTaskDetailsTypeEnum {
    static var allValues: [CreateBatchTaskDetailsTypeEnum] { [.compute, .group] }
    static var allStringValues: [String] { ["COMPUTE", "GROUP"] }
    static func fromString(_ value: String) -> CreateBatchTaskDetailsTypeEnum? { CreateBatchTaskDetailsTypeEnum(rawValue: value) }
}