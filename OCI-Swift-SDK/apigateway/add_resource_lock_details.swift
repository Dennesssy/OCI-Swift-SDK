import Foundation

// MARK: - AddResourceLockDetails

public struct AddResourceLockDetails: Codable, Sendable {

    public var type: AddResourceLockDetailsTypeEnum
    public var message: String?

    private enum CodingKeys: String, CodingKey {
        case type, message
    }

    public init(
                type: AddResourceLockDetailsTypeEnum,
                message: String? = nil
    ) {
        self.type = type
        self.message = message
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddResourceLockDetails: CustomStringConvertible {
    public var description: String { "AddResourceLockDetails()" }
}