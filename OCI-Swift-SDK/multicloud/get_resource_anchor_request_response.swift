import Foundation

// MARK: - GetResourceAnchorRequest

public struct GetResourceAnchorRequest: Codable, Sendable {
    public var resourceAnchorId: String?
    public var subscriptionServiceName: GetResourceAnchorSubscriptionServiceNameEnum
    public var subscriptionId: String?
    public var opcRequestId: String?
    public var shouldFetchCompartmentName: Bool?

    private enum CodingKeys: String, CodingKey {
        case resourceAnchorId, subscriptionServiceName, subscriptionId, opcRequestId, shouldFetchCompartmentName
    }

    public init(
                resourceAnchorId: String? = nil,
                subscriptionServiceName: GetResourceAnchorSubscriptionServiceNameEnum,
                subscriptionId: String? = nil,
                opcRequestId: String? = nil,
                shouldFetchCompartmentName: Bool? = nil
    ) {
        self.resourceAnchorId = resourceAnchorId
        self.subscriptionServiceName = subscriptionServiceName
        self.subscriptionId = subscriptionId
        self.opcRequestId = opcRequestId
        self.shouldFetchCompartmentName = shouldFetchCompartmentName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetResourceAnchorRequest: CustomStringConvertible {
    public var description: String { "GetResourceAnchorRequest()" }
}

// MARK: - GetResourceAnchorResponse

public struct GetResourceAnchorResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var resourceAnchor: ResourceAnchor?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, resourceAnchor
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                resourceAnchor: ResourceAnchor? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.resourceAnchor = resourceAnchor
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetResourceAnchorResponse: CustomStringConvertible {
    public var description: String { "GetResourceAnchorResponse()" }
}