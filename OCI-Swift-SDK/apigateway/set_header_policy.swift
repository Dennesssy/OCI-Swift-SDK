import Foundation

// MARK: - SetHeaderPolicy

public struct SetHeaderPolicy: Codable, Sendable {

    public var items: [SetHeaderPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [SetHeaderPolicyItem]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetHeaderPolicy: CustomStringConvertible {
    public var description: String { "SetHeaderPolicy()" }
}