import Foundation

// MARK: - ListGenericArtifactsRequest

public struct ListGenericArtifactsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var repositoryId: String?
    public var id: String?
    public var displayName: String?
    public var artifactPath: String?
    public var version: String?
    public var sha256: String?
    public var lifecycleState: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var sortBy: ListGenericArtifactsSortByEnum?
    public var sortOrder: ListGenericArtifactsSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, repositoryId, id, displayName, artifactPath, version, sha256, lifecycleState, limit, page, opcRequestId, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                repositoryId: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                artifactPath: String? = nil,
                version: String? = nil,
                sha256: String? = nil,
                lifecycleState: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                sortBy: ListGenericArtifactsSortByEnum? = nil,
                sortOrder: ListGenericArtifactsSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.repositoryId = repositoryId
        self.id = id
        self.displayName = displayName
        self.artifactPath = artifactPath
        self.version = version
        self.sha256 = sha256
        self.lifecycleState = lifecycleState
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

extension ListGenericArtifactsRequest: CustomStringConvertible {
    public var description: String { "ListGenericArtifactsRequest()" }
}

// MARK: - ListGenericArtifactsResponse

public struct ListGenericArtifactsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var genericArtifactCollection: GenericArtifactCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, genericArtifactCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                genericArtifactCollection: GenericArtifactCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.genericArtifactCollection = genericArtifactCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGenericArtifactsResponse: CustomStringConvertible {
    public var description: String { "ListGenericArtifactsResponse()" }
}