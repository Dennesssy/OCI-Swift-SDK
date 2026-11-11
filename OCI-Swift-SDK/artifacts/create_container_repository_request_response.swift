import Foundation

// MARK: - CreateContainerRepositoryRequest

public struct CreateContainerRepositoryRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createContainerRepositoryDetails: CreateContainerRepositoryDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createContainerRepositoryDetails
    }

    public init(
                opcRequestId: String? = nil,
                createContainerRepositoryDetails: CreateContainerRepositoryDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createContainerRepositoryDetails = createContainerRepositoryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateContainerRepositoryRequest: CustomStringConvertible {
    public var description: String { "CreateContainerRepositoryRequest()" }
}

// MARK: - CreateContainerRepositoryResponse

public struct CreateContainerRepositoryResponse: Codable, Sendable {
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

extension CreateContainerRepositoryResponse: CustomStringConvertible {
    public var description: String { "CreateContainerRepositoryResponse()" }
}