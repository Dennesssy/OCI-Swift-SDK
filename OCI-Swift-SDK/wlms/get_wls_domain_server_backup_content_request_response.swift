import Foundation
import OCICommon

// MARK: - GetWlsDomainServerBackupContentRequest

public struct GetWlsDomainServerBackupContentRequest: Codable, Sendable {
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

extension GetWlsDomainServerBackupContentRequest: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerBackupContentRequest()" }
}

// MARK: - GetWlsDomainServerBackupContentResponse

public struct GetWlsDomainServerBackupContentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var backupContent: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, backupContent
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                backupContent: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.backupContent = backupContent
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainServerBackupContentResponse: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerBackupContentResponse()" }
}