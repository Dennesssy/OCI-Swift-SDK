import Foundation

// MARK: - Message

public struct Message: Codable, Sendable {

    public var role: MessageRoleEnum
    public var content: MessageContent?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case role, content, timeCreated
    }

    public init(
                role: MessageRoleEnum,
                content: MessageContent? = nil,
                timeCreated: Date? = nil
    ) {
        self.role = role
        self.content = content
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Message: CustomStringConvertible {
    public var description: String { "Message()" }
}