import Foundation

// MARK: - DeleteRepositoryRequest

public struct DeleteRepositoryRequest: Codable, Sendable {
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

extension DeleteRepositoryRequest: CustomStringConvertible {
    public var description: String { "DeleteRepositoryRequest()" }
}

// MARK: - DeleteRepositoryResponse

public struct DeleteRepositoryResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteRepositoryResponse: CustomStringConvertible {
    public var description: String { "DeleteRepositoryResponse()" }
}