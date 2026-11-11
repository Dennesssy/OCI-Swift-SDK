import Foundation

// MARK: - SyncRepositoryRequest

public struct SyncRepositoryRequest: Codable, Sendable {
    public var repositoryId: String?
    public var syncMergeStrategy: SyncRepositorySyncMergeStrategyEnum
    public var ifMatch: String?
    public var opcRequestId: String?
    public var syncRepositoryDetails: SyncRepositoryDetails?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, syncMergeStrategy, ifMatch, opcRequestId, syncRepositoryDetails
    }

    public init(
                repositoryId: String? = nil,
                syncMergeStrategy: SyncRepositorySyncMergeStrategyEnum,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                syncRepositoryDetails: SyncRepositoryDetails? = nil
    ) {
        self.repositoryId = repositoryId
        self.syncMergeStrategy = syncMergeStrategy
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.syncRepositoryDetails = syncRepositoryDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SyncRepositoryRequest: CustomStringConvertible {
    public var description: String { "SyncRepositoryRequest()" }
}

// MARK: - SyncRepositoryResponse

public struct SyncRepositoryResponse: Codable, Sendable {
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

extension SyncRepositoryResponse: CustomStringConvertible {
    public var description: String { "SyncRepositoryResponse()" }
}