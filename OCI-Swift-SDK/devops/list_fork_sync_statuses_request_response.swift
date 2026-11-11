import Foundation

// MARK: - ListForkSyncStatusesRequest

public struct ListForkSyncStatusesRequest: Codable, Sendable {
    public var repositoryId: String?
    public var branchNameQueryParam: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case repositoryId, branchNameQueryParam, ifMatch, opcRequestId
    }

    public init(
                repositoryId: String? = nil,
                branchNameQueryParam: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.repositoryId = repositoryId
        self.branchNameQueryParam = branchNameQueryParam
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListForkSyncStatusesRequest: CustomStringConvertible {
    public var description: String { "ListForkSyncStatusesRequest()" }
}

// MARK: - ListForkSyncStatusesResponse

public struct ListForkSyncStatusesResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var forkSyncStatusCollection: ForkSyncStatusCollection?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, forkSyncStatusCollection
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                forkSyncStatusCollection: ForkSyncStatusCollection? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.forkSyncStatusCollection = forkSyncStatusCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListForkSyncStatusesResponse: CustomStringConvertible {
    public var description: String { "ListForkSyncStatusesResponse()" }
}