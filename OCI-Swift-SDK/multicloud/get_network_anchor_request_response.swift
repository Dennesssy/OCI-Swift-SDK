import Foundation

// MARK: - GetNetworkAnchorRequest

public struct GetNetworkAnchorRequest: Codable, Sendable {
    public var networkAnchorId: String?
    public var subscriptionServiceName: GetNetworkAnchorSubscriptionServiceNameEnum
    public var subscriptionId: String?
    public var opcRequestId: String?
    public var externalLocation: String?
    public var shouldFetchVcnName: Bool?

    private enum CodingKeys: String, CodingKey {
        case networkAnchorId, subscriptionServiceName, subscriptionId, opcRequestId, externalLocation, shouldFetchVcnName
    }

    public init(
                networkAnchorId: String? = nil,
                subscriptionServiceName: GetNetworkAnchorSubscriptionServiceNameEnum,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil,
                externalLocation: String? = nil,
                shouldFetchVcnName: Bool? = nil
    ) {
        self.networkAnchorId = networkAnchorId
        self.subscriptionServiceName = subscriptionServiceName
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
        self.externalLocation = externalLocation
        self.shouldFetchVcnName = shouldFetchVcnName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetNetworkAnchorRequest: CustomStringConvertible {
    public var description: String { "GetNetworkAnchorRequest()" }
}

// MARK: - GetNetworkAnchorResponse

public struct GetNetworkAnchorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var networkAnchor: NetworkAnchor?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, networkAnchor
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                networkAnchor: NetworkAnchor? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.networkAnchor = networkAnchor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetNetworkAnchorResponse: CustomStringConvertible {
    public var description: String { "GetNetworkAnchorResponse()" }
}