import Foundation

// MARK: - RemoveResourceLockDetails

public struct RemoveResourceLockDetails: Codable, Sendable {

    public var type: RemoveResourceLockDetailsTypeEnum

    private enum CodingKeys: String, CodingKey {
        case type
    }

    public init(
                type: RemoveResourceLockDetailsTypeEnum
    ) {
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveResourceLockDetails: CustomStringConvertible {
    public var description: String { "RemoveResourceLockDetails()" }
}