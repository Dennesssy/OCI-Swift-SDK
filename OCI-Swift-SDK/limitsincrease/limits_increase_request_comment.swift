import Foundation

// MARK: - LimitsIncreaseRequestComment

public struct LimitsIncreaseRequestComment: Codable, Sendable {

    public var message: String?
    public var timeCreated: Date?
    public var senderType: LimitsIncreaseRequestCommentSenderTypeEnum

    private enum CodingKeys: String, CodingKey {
        case message, timeCreated, senderType
    }

    public init(
                message: String? = nil,
                timeCreated: Date? = nil,
                senderType: LimitsIncreaseRequestCommentSenderTypeEnum
    ) {
        self.message = message
        self.timeCreated = timeCreated
        self.senderType = senderType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LimitsIncreaseRequestComment: CustomStringConvertible {
    public var description: String { "LimitsIncreaseRequestComment()" }
}