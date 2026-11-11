import Foundation

// MARK: - ListContainerImagesRequest

public struct ListContainerImagesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var compartmentIdInSubtree: Bool?
    public var displayName: String?
    public var imageId: String?
    public var isVersioned: Bool?
    public var repositoryId: String?
    public var repositoryName: String?
    public var version: String?
    public var lifecycleState: String?
    public var imageDigest: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var sortBy: ListContainerImagesSortByEnum?
    public var sortOrder: ListContainerImagesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, compartmentIdInSubtree, displayName, imageId, isVersioned, repositoryId, repositoryName, version, lifecycleState, imageDigest, limit, page, opcRequestId, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                compartmentIdInSubtree: Bool? = nil,
                displayName: String? = nil,
                imageId: String? = nil,
                isVersioned: Bool? = nil,
                repositoryId: String? = nil,
                repositoryName: String? = nil,
                version: String? = nil,
                lifecycleState: String? = nil,
                imageDigest: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                sortBy: ListContainerImagesSortByEnum? = nil,
                sortOrder: ListContainerImagesSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.compartmentIdInSubtree = compartmentIdInSubtree
        self.displayName = displayName
        self.imageId = imageId
        self.isVersioned = isVersioned
        self.repositoryId = repositoryId
        self.repositoryName = repositoryName
        self.version = version
        self.lifecycleState = lifecycleState
        self.imageDigest = imageDigest
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
        self.sortBy = sortBy
        self.sortOrder = sortOrder
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListContainerImagesRequest: CustomStringConvertible {
    public var description: String { "ListContainerImagesRequest()" }
}

// MARK: - ListContainerImagesResponse

public struct ListContainerImagesResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var containerImageCollection: ContainerImageCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, containerImageCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                containerImageCollection: ContainerImageCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.containerImageCollection = containerImageCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListContainerImagesResponse: CustomStringConvertible {
    public var description: String { "ListContainerImagesResponse()" }
}