import Foundation

// MARK: - GetWlsDomainServerBackupRequest

public struct GetWlsDomainServerBackupRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var serverId: String?
    public var backupId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverId, backupId, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                serverId: String? = nil,
                backupId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.serverId = serverId
        self.backupId = backupId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainServerBackupRequest: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerBackupRequest()" }
}

// MARK: - GetWlsDomainServerBackupResponse

public struct GetWlsDomainServerBackupResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var backup: Backup?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, backup
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                backup: Backup? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.backup = backup
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainServerBackupResponse: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerBackupResponse()" }
}