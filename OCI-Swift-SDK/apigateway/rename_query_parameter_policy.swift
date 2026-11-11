import Foundation

// MARK: - RenameQueryParameterPolicy

public struct RenameQueryParameterPolicy: Codable, Sendable {

    public var items: [RenameQueryParameterPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RenameQueryParameterPolicyItem]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RenameQueryParameterPolicy: CustomStringConvertible {
    public var description: String { "RenameQueryParameterPolicy()" }
}