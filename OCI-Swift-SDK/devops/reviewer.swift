import Foundation

// MARK: - Reviewer

public struct Reviewer: Codable, Sendable {

    public var principalId: String?
    public var principalName: String?
    public var principalType: ReviewerPrincipalTypeEnum?
    public var principalState: ReviewerPrincipalStateEnum?
    public var status: ReviewerStatusEnum?

    private enum CodingKeys: String, CodingKey {
        case principalId, principalName, principalType, principalState, status
    }

    public init(
                principalId: String? = nil,
                principalName: String? = nil,
                principalType: ReviewerPrincipalTypeEnum? = nil,
                principalState: ReviewerPrincipalStateEnum? = nil,
                status: ReviewerStatusEnum? = nil
    ) {
        self.principalId = principalId
        self.principalName = principalName
        self.principalType = principalType
        self.principalState = principalState
        self.status = status
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Reviewer: CustomStringConvertible {
    public var description: String { "Reviewer()" }
}