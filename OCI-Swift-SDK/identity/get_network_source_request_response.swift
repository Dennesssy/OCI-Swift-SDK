import Foundation

// MARK: - GetNetworkSourceRequest

public struct GetNetworkSourceRequest: Codable, Sendable {
    public var networkSourceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case networkSourceId, opcRequestId
    }

    public init(
                networkSourceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.networkSourceId = networkSourceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetNetworkSourceRequest: CustomStringConvertible {
    public var description: String { "GetNetworkSourceRequest()" }
}

// MARK: - GetNetworkSourceResponse

public struct GetNetworkSourceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var networkSources: NetworkSources?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, networkSources
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                networkSources: NetworkSources? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.networkSources = networkSources
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetNetworkSourceResponse: CustomStringConvertible {
    public var description: String { "GetNetworkSourceResponse()" }
}