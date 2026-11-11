import Foundation

// MARK: - RemoveLockDetails

public struct RemoveLockDetails: Codable, Sendable {

    public var type: RemoveLockDetailsTypeEnum

    private enum CodingKeys: String, CodingKey {
        case type
    }

    public init(
                type: RemoveLockDetailsTypeEnum
    ) {
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveLockDetails: CustomStringConvertible {
    public var description: String { "RemoveLockDetails()" }
}