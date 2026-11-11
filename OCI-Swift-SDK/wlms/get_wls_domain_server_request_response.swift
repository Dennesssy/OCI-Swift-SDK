import Foundation

// MARK: - GetWlsDomainServerRequest

public struct GetWlsDomainServerRequest: Codable, Sendable {
    public var wlsDomainId: String?
    public var serverId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainId, serverId, opcRequestId
    }

    public init(
                wlsDomainId: String? = nil,
                serverId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.wlsDomainId = wlsDomainId
        self.serverId = serverId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainServerRequest: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerRequest()" }
}

// MARK: - GetWlsDomainServerResponse

public struct GetWlsDomainServerResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var server: Server?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, server
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                server: Server? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.server = server
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWlsDomainServerResponse: CustomStringConvertible {
    public var description: String { "GetWlsDomainServerResponse()" }
}