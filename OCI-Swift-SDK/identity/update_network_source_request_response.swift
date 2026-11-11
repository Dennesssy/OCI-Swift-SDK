import Foundation

// MARK: - UpdateNetworkSourceRequest

public struct UpdateNetworkSourceRequest: Codable, Sendable {
    public var networkSourceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateNetworkSourceDetails: UpdateNetworkSourceDetails?

    private enum CodingKeys: String, CodingKey {
        case networkSourceId, ifMatch, opcRequestId, updateNetworkSourceDetails
    }

    public init(
                networkSourceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateNetworkSourceDetails: UpdateNetworkSourceDetails? = nil
    ) {
        self.networkSourceId = networkSourceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateNetworkSourceDetails = updateNetworkSourceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateNetworkSourceRequest: CustomStringConvertible {
    public var description: String { "UpdateNetworkSourceRequest()" }
}

// MARK: - UpdateNetworkSourceResponse

public struct UpdateNetworkSourceResponse: Codable, Sendable {
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

extension UpdateNetworkSourceResponse: CustomStringConvertible {
    public var description: String { "UpdateNetworkSourceResponse()" }
}