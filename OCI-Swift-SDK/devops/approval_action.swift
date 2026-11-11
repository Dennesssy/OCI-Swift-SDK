import Foundation

// MARK: - ApprovalAction

public struct ApprovalAction: Codable, Sendable {

    public var subjectId: String?
    public var action: ApprovalActionActionEnum
    public var reason: String?

    private enum CodingKeys: String, CodingKey {
        case subjectId, action, reason
    }

    public init(
                subjectId: String? = nil,
                action: ApprovalActionActionEnum,
                reason: String? = nil
    ) {
        self.subjectId = subjectId
        self.action = action
        self.reason = reason
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApprovalAction: CustomStringConvertible {
    public var description: String { "ApprovalAction()" }
}