import Foundation

// MARK: - AddonCollection

public struct AddonCollection: Codable, Sendable {

    public var items: [AddonSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AddonSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddonCollection: CustomStringConvertible {
    public var description: String { "AddonCollection()" }
}