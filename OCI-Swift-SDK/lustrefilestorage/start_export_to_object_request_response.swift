import Foundation

// MARK: - StartExportToObjectRequest

public struct StartExportToObjectRequest: Codable, Sendable {
    public var objectStorageLinkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case objectStorageLinkId, ifMatch, opcRequestId
    }

    public init(
                objectStorageLinkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.objectStorageLinkId = objectStorageLinkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StartExportToObjectRequest: CustomStringConvertible {
    public var description: String { "StartExportToObjectRequest()" }
}

// MARK: - StartExportToObjectResponse

public struct StartExportToObjectResponse: Codable, Sendable {
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

extension StartExportToObjectResponse: CustomStringConvertible {
    public var description: String { "StartExportToObjectResponse()" }
}