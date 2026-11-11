import Foundation

// MARK: - SetQueryParameterPolicy

public struct SetQueryParameterPolicy: Codable, Sendable {

    public var items: [SetQueryParameterPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SetQueryParameterPolicyItem]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetQueryParameterPolicy: CustomStringConvertible {
    public var description: String { "SetQueryParameterPolicy()" }
}