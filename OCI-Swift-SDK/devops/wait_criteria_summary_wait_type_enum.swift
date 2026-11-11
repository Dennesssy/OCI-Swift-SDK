import Foundation

// MARK: - WaitCriteriaSummaryWaitTypeEnum

public enum WaitCriteriaSummaryWaitTypeEnum: String, Codable, Sendable {
    case absoluteWait = "ABSOLUTE_WAIT"
}

public extension WaitCriteriaSummaryWaitTypeEnum {
    static var allValues: [WaitCriteriaSummaryWaitTypeEnum] { [.absoluteWait] }
    static var allStringValues: [String] { ["ABSOLUTE_WAIT"] }
    static func fromString(_ value: String) -> WaitCriteriaSummaryWaitTypeEnum? { WaitCriteriaSummaryWaitTypeEnum(rawValue: value) }
}