import Foundation

// MARK: - RenameHeaderPolicy

public struct RenameHeaderPolicy: Codable, Sendable {

    public var items: [RenameHeaderPolicyItem]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [RenameHeaderPolicyItem]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RenameHeaderPolicy: CustomStringConvertible {
    public var description: String { "RenameHeaderPolicy()" }
}