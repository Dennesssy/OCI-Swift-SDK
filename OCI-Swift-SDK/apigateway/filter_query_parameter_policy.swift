import Foundation

// MARK: - FilterQueryParameterPolicy

public struct FilterQueryParameterPolicy: Codable, Sendable {

    public var type: FilterQueryParameterPolicyTypeEnum
    public var items: [FilterQueryParameterPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case type, items
    }

    public init(
                type: FilterQueryParameterPolicyTypeEnum,
                items: [FilterQueryParameterPolicyItem]
    ) {
        self.type = type
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FilterQueryParameterPolicy: CustomStringConvertible {
    public var description: String { "FilterQueryParameterPolicy()" }
}