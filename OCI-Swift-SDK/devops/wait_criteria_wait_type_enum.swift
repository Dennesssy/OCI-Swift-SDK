import Foundation

// MARK: - WaitCriteriaWaitTypeEnum

public enum WaitCriteriaWaitTypeEnum: String, Codable, Sendable {
    case absoluteWait = "ABSOLUTE_WAIT"
}

public extension WaitCriteriaWaitTypeEnum {
    static var allValues: [WaitCriteriaWaitTypeEnum] { [.absoluteWait] }
    static var allStringValues: [String] { ["ABSOLUTE_WAIT"] }
    static func fromString(_ value: String) -> WaitCriteriaWaitTypeEnum? { WaitCriteriaWaitTypeEnum(rawValue: value) }
}