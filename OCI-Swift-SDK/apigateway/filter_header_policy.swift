import Foundation

// MARK: - FilterHeaderPolicy

public struct FilterHeaderPolicy: Codable, Sendable {

    public var type: FilterHeaderPolicyTypeEnum
    public var items: [FilterHeaderPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case type, items
    }

    public init(
                type: FilterHeaderPolicyTypeEnum,
                items: [FilterHeaderPolicyItem]
    ) {
        self.type = type
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FilterHeaderPolicy: CustomStringConvertible {
    public var description: String { "FilterHeaderPolicy()" }
}