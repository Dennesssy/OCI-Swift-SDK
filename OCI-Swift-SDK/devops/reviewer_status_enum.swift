import Foundation

// MARK: - ReviewerStatusEnum

public enum ReviewerStatusEnum: String, Codable, Sendable {
    case approved = "APPROVED"
    case reviewPending = "REVIEW_PENDING"
}

public extension ReviewerStatusEnum {
    static var allValues: [ReviewerStatusEnum] { [.approved, .reviewPending] }
    static var allStringValues: [String] { ["APPROVED", "REVIEW_PENDING"] }
    static func fromString(_ value: String) -> ReviewerStatusEnum? { ReviewerStatusEnum(rawValue: value) }
}