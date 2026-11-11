import Foundation

// MARK: - AddLockDetails

public struct AddLockDetails: Codable, Sendable {

    public var type: AddLockDetailsTypeEnum
    public var relatedResourceId: String?
    public var message: String?

    private enum CodingKeys: String, CodingKey {
        case type, relatedResourceId, message
    }

    public init(
                type: AddLockDetailsTypeEnum,
                relatedResourceId: String? = nil,
                message: String? = nil
    ) {
        self.type = type
        self.relatedResourceId = relatedResourceId
        self.message = message
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddLockDetails: CustomStringConvertible {
    public var description: String { "AddLockDetails()" }
}