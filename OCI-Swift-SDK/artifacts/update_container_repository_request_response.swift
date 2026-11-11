import Foundation

// MARK: - UpdateContainerRepositoryRequest

public struct UpdateContainerRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateContainerRepositoryDetails: UpdateContainerRepositoryDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, updateContainerRepositoryDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateContainerRepositoryDetails: UpdateContainerRepositoryDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateContainerRepositoryDetails = updateContainerRepositoryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerRepositoryRequest: CustomStringConvertible {
    public var description: String { "UpdateContainerRepositoryRequest()" }
}

// MARK: - UpdateContainerRepositoryResponse

public struct UpdateContainerRepositoryResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var containerRepository: ContainerRepository?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, containerRepository
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                containerRepository: ContainerRepository? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.containerRepository = containerRepository
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerRepositoryResponse: CustomStringConvertible {
    public var description: String { "UpdateContainerRepositoryResponse()" }
}