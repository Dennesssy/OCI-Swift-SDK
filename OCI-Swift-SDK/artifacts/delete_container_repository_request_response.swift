import Foundation

// MARK: - DeleteContainerRepositoryRequest

public struct DeleteContainerRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteContainerRepositoryRequest: CustomStringConvertible {
    public var description: String { "DeleteContainerRepositoryRequest()" }
}

// MARK: - DeleteContainerRepositoryResponse

public struct DeleteContainerRepositoryResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteContainerRepositoryResponse: CustomStringConvertible {
    public var description: String { "DeleteContainerRepositoryResponse()" }
}