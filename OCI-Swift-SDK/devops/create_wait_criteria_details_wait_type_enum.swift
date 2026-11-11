import Foundation

// MARK: - CreateWaitCriteriaDetailsWaitTypeEnum

public enum CreateWaitCriteriaDetailsWaitTypeEnum: String, Codable, Sendable {
    case absoluteWait = "ABSOLUTE_WAIT"
}

public extension CreateWaitCriteriaDetailsWaitTypeEnum {
    static var allValues: [CreateWaitCriteriaDetailsWaitTypeEnum] { [.absoluteWait] }
    static var allStringValues: [String] { ["ABSOLUTE_WAIT"] }
    static func fromString(_ value: String) -> CreateWaitCriteriaDetailsWaitTypeEnum? { CreateWaitCriteriaDetailsWaitTypeEnum(rawValue: value) }
}