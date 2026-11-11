import Foundation

// MARK: - ApprovalActionActionEnum

public enum ApprovalActionActionEnum: String, Codable, Sendable {
    case approve = "APPROVE"
    case reject = "REJECT"
}

public extension ApprovalActionActionEnum {
    static var allValues: [ApprovalActionActionEnum] { [.approve, .reject] }
    static var allStringValues: [String] { ["APPROVE", "REJECT"] }
    static func fromString(_ value: String) -> ApprovalActionActionEnum? { ApprovalActionActionEnum(rawValue: value) }
}