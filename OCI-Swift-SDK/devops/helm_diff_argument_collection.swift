import Foundation

// MARK: - HelmDiffArgumentCollection

public struct HelmDiffArgumentCollection: Codable, Sendable {

    public var items: [HelmDiffArgument]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [HelmDiffArgument]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HelmDiffArgumentCollection: CustomStringConvertible {
    public var description: String { "HelmDiffArgumentCollection()" }
}