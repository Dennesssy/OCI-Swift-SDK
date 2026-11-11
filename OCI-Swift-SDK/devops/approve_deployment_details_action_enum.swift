import Foundation

// MARK: - ApproveDeploymentDetailsActionEnum

public enum ApproveDeploymentDetailsActionEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case reject = "REJECT"
}

public extension ApproveDeploymentDetailsActionEnum {
    static var allValues: [ApproveDeploymentDetailsActionEnum] { [.approve, .reject] }
    static var allStringValues: [String] { ["APPROVE", "REJECT"] }
    static func fromString(_ value: String) -> ApproveDeploymentDetailsActionEnum? { ApproveDeploymentDetailsActionEnum(rawValue: value) }
}