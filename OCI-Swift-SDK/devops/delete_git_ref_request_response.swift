import Foundation

// MARK: - DeleteGitRefRequest

public struct DeleteGitRefRequest: Codable, Sendable {
    public var repositoryId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var deleteGitRefDetails: DeleteGitRefDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, ifMatch, opcRequestId, deleteGitRefDetails
    }

    public init(
                repositoryId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                deleteGitRefDetails: DeleteGitRefDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.deleteGitRefDetails = deleteGitRefDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteGitRefRequest: CustomStringConvertible {
    public var description: String { "DeleteGitRefRequest()" }
}

// MARK: - DeleteGitRefResponse

public struct DeleteGitRefResponse: Codable, Sendable {
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

extension DeleteGitRefResponse: CustomStringConvertible {
    public var description: String { "DeleteGitRefResponse()" }
}