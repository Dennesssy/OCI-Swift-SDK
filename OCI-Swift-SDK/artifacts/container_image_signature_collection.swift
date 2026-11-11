import Foundation

// MARK: - ContainerImageSignatureCollection

public struct ContainerImageSignatureCollection: Codable, Sendable {

    public var items: [ContainerImageSignatureSummary]
    public var remainingItemsCount: Int?

    private enum CodingKeys: String, CodingKey {
        case items, remainingItemsCount
    }

    public init(
                items: [ContainerImageSignatureSummary],
                remainingItemsCount: Int? = nil
    ) {
        self.items = items
        self.remainingItemsCount = remainingItemsCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImageSignatureCollection: CustomStringConvertible {
    public var description: String { "ContainerImageSignatureCollection()" }
}