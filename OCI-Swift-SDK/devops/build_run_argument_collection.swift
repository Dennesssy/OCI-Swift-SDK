import Foundation

// MARK: - BuildRunArgumentCollection

public struct BuildRunArgumentCollection: Codable, Sendable {

    public var items: [BuildRunArgument]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BuildRunArgument]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunArgumentCollection: CustomStringConvertible {
    public var description: String { "BuildRunArgumentCollection()" }
}