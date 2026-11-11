import Foundation

// MARK: - DelegatedResourceAccessRequestHistorySummary

public struct DelegatedResourceAccessRequestHistorySummary: Codable, Sendable {

    public var lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum?
    public var requestStatus: DelegatedResourceAccessRequestStatusEnum?
    public var userId: String?
    public var comment: String?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case lifecycleState, requestStatus, userId, comment, timestamp
    }

    public init(
                lifecycleState: DelegatedResourceAccessRequestLifecycleStateEnum? = nil,
                requestStatus: DelegatedResourceAccessRequestStatusEnum? = nil,
                userId: String? = nil,
                comment: String? = nil,
                timestamp: Date? = nil
    ) {
        self.lifecycleState = lifecycleState
        self.requestStatus = requestStatus
        self.userId = userId
        self.comment = comment
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DelegatedResourceAccessRequestHistorySummary: CustomStringConvertible {
    public var description: String { "DelegatedResourceAccessRequestHistorySummary()" }
}