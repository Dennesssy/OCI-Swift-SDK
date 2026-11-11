import Foundation

// MARK: - BatchContextShapeCollection

public struct BatchContextShapeCollection: Codable, Sendable {

    public var items: [BatchContextShapeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [BatchContextShapeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BatchContextShapeCollection: CustomStringConvertible {
    public var description: String { "BatchContextShapeCollection()" }
}