import Foundation

// MARK: - NodeShapeCollection

public struct NodeShapeCollection: Codable, Sendable {

    public var items: [NodeShapeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [NodeShapeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NodeShapeCollection: CustomStringConvertible {
    public var description: String { "NodeShapeCollection()" }
}