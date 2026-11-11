import Foundation

// MARK: - GetSyncJobRequest

public struct GetSyncJobRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var syncJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, syncJobId, ifMatch, opcRequestId
    }

    public init(
                objectStorageLinkId: String? = nil,
                syncJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.syncJobId = syncJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSyncJobRequest: CustomStringConvertible {
    public var description: String { "GetSyncJobRequest()" }
}

// MARK: - GetSyncJobResponse

public struct GetSyncJobResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var syncJob: SyncJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, syncJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                syncJob: SyncJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.syncJob = syncJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSyncJobResponse: CustomStringConvertible {
    public var description: String { "GetSyncJobResponse()" }
}