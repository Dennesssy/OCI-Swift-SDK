import Foundation

// MARK: - ListContainerImageSignaturesRequest

public struct ListContainerImageSignaturesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var compartmentIdInSubtree: Bool?
    public var imageId: String?
    public var repositoryId: String?
    public var repositoryName: String?
    public var imageDigest: String?
    public var displayName: String?
    public var kmsKeyId: String?
    public var kmsKeyVersionId: String?
    public var signingAlgorithm: ListContainerImageSignaturesSigningAlgorithmEnum?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?
    public var sortBy: ListContainerImageSignaturesSortByEnum?
    public var sortOrder: ListContainerImageSignaturesSortOrderEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, compartmentIdInSubtree, imageId, repositoryId, repositoryName, imageDigest, displayName, kmsKeyId, kmsKeyVersionId, signingAlgorithm, limit, page, opcRequestId, sortBy, sortOrder
    }

    public init(
                compartmentId: String? = nil,
                compartmentIdInSubtree: Bool? = nil,
                imageId: String? = nil,
                repositoryId: String? = nil,
                repositoryName: String? = nil,
                imageDigest: String? = nil,
                displayName: String? = nil,
                kmsKeyId: String? = nil,
                kmsKeyVersionId: String? = nil,
                signingAlgorithm: ListContainerImageSignaturesSigningAlgorithmEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil,
                sortBy: ListContainerImageSignaturesSortByEnum? = nil,
                sortOrder: ListContainerImageSignaturesSortOrderEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.compartmentIdInSubtree = compartmentIdInSubtree
        self.imageId = imageId
        self.repositoryId = repositoryId
        self.repositoryName = repositoryName
        self.imageDigest = imageDigest
        self.displayName = displayName
        self.kmsKeyId = kmsKeyId
        self.kmsKeyVersionId = kmsKeyVersionId
        self.signingAlgorithm = signingAlgorithm
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

extension ListContainerImageSignaturesRequest: CustomStringConvertible {
    public var description: String { "ListContainerImageSignaturesRequest()" }
}

// MARK: - ListContainerImageSignaturesResponse

public struct ListContainerImageSignaturesResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var containerImageSignatureCollection: ContainerImageSignatureCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, containerImageSignatureCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                containerImageSignatureCollection: ContainerImageSignatureCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.containerImageSignatureCollection = containerImageSignatureCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListContainerImageSignaturesResponse: CustomStringConvertible {
    public var description: String { "ListContainerImageSignaturesResponse()" }
}