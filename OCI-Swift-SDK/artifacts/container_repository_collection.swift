import Foundation

// MARK: - ContainerRepositoryCollection

public struct ContainerRepositoryCollection: Codable, Sendable {

    public var layerCount: Int?
    public var layersSizeInBytes: Int64?
    public var imageCount: Int?
    public var items: [ContainerRepositorySummary]
    public var remainingItemsCount: Int?
    public var repositoryCount: Int?

    private enum CodingKeys: String, CodingKey {
        case layerCount, layersSizeInBytes, imageCount, items, remainingItemsCount, repositoryCount
    }

    public init(
                layerCount: Int? = nil,
                layersSizeInBytes: Int64? = nil,
                imageCount: Int? = nil,
                items: [ContainerRepositorySummary],
                remainingItemsCount: Int? = nil,
                repositoryCount: Int? = nil
    ) {
        self.layerCount = layerCount
        self.layersSizeInBytes = layersSizeInBytes
        self.imageCount = imageCount
        self.items = items
        self.remainingItemsCount = remainingItemsCount
        self.repositoryCount = repositoryCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerRepositoryCollection: CustomStringConvertible {
    public var description: String { "ContainerRepositoryCollection()" }
}