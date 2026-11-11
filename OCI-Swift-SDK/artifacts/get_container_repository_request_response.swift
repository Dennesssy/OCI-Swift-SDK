import Foundation

// MARK: - GetContainerRepositoryRequest

public struct GetContainerRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetContainerRepositoryRequest: CustomStringConvertible {
    public var description: String { "GetContainerRepositoryRequest()" }
}

// MARK: - GetContainerRepositoryResponse

public struct GetContainerRepositoryResponse: Codable, Sendable {
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

extension GetContainerRepositoryResponse: CustomStringConvertible {
    public var description: String { "GetContainerRepositoryResponse()" }
}