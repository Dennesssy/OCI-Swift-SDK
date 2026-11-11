import Foundation

// MARK: - AddonOptionCollection

public struct AddonOptionCollection: Codable, Sendable {

    public var items: [AddonOptionSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AddonOptionSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddonOptionCollection: CustomStringConvertible {
    public var description: String { "AddonOptionCollection()" }
}