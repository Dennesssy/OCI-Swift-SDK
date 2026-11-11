import Foundation

// MARK: - IamWorkRequestSummaryStatusEnum

public enum IamWorkRequestSummaryStatusEnum: String, Codable, Sendable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case failed = "FAILED"
    case succeeded = "SUCCEEDED"
    case canceling = "CANCELING"
    case canceled = "CANCELED"
}

public extension IamWorkRequestSummaryStatusEnum {
    static var allValues: [IamWorkRequestSummaryStatusEnum] { [.accepted, .inProgress, .failed, .succeeded, .canceling, .canceled] }
    static var allStringValues: [String] { ["ACCEPTED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "CANCELING", "CANCELED"] }
    static func fromString(_ value: String) -> IamWorkRequestSummaryStatusEnum? { IamWorkRequestSummaryStatusEnum(rawValue: value) }
}