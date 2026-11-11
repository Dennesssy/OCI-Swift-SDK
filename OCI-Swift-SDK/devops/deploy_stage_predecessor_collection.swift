import Foundation

// MARK: - DeployStagePredecessorCollection

public struct DeployStagePredecessorCollection: Codable, Sendable {

    public var items: [DeployStagePredecessor]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DeployStagePredecessor]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeployStagePredecessorCollection: CustomStringConvertible {
    public var description: String { "DeployStagePredecessorCollection()" }
}