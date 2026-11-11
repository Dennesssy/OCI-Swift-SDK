import Foundation

// MARK: - UpdateWaitCriteriaDetailsWaitTypeEnum

public enum UpdateWaitCriteriaDetailsWaitTypeEnum: String, Codable, Sendable {
    case absoluteWait = "ABSOLUTE_WAIT"
}

public extension UpdateWaitCriteriaDetailsWaitTypeEnum {
    static var allValues: [UpdateWaitCriteriaDetailsWaitTypeEnum] { [.absoluteWait] }
    static var allStringValues: [String] { ["ABSOLUTE_WAIT"] }
    static func fromString(_ value: String) -> UpdateWaitCriteriaDetailsWaitTypeEnum? { UpdateWaitCriteriaDetailsWaitTypeEnum(rawValue: value) }
}