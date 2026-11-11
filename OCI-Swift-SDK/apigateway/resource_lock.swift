import Foundation

// MARK: - ResourceLock

public struct ResourceLock: Codable, Sendable {

    public var type: ResourceLockTypeEnum
    public var relatedResourceId: String?
    public var message: String?
    public var timeCreated: Date?

    private enum CodingKeys: String, CodingKey {
        case type, relatedResourceId, message, timeCreated
    }

    public init(
                type: ResourceLockTypeEnum,
                relatedResourceId: String? = nil,
                message: String? = nil,
                timeCreated: Date? = nil
    ) {
        self.type = type
        self.relatedResourceId = relatedResourceId
        self.message = message
        self.timeCreated = timeCreated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceLock: CustomStringConvertible {
    public var description: String { "ResourceLock()" }
}