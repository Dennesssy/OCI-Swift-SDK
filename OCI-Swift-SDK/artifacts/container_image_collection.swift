import Foundation

// MARK: - ContainerImageCollection

public struct ContainerImageCollection: Codable, Sendable {

    public var items: [ContainerImageSummary]
    public var remainingItemsCount: Int?

    private enum CodingKeys: String, CodingKey {
        case items, remainingItemsCount
    }

    public init(
                items: [ContainerImageSummary],
                remainingItemsCount: Int? = nil
    ) {
        self.items = items
        self.remainingItemsCount = remainingItemsCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImageCollection: CustomStringConvertible {
    public var description: String { "ContainerImageCollection()" }
}