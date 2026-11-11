import Foundation

// MARK: - GetResourceAnalyticsInstanceRequest

public struct GetResourceAnalyticsInstanceRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, opcRequestId
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetResourceAnalyticsInstanceRequest: CustomStringConvertible {
    public var description: String { "GetResourceAnalyticsInstanceRequest()" }
}

// MARK: - GetResourceAnalyticsInstanceResponse

public struct GetResourceAnalyticsInstanceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var resourceAnalyticsInstance: ResourceAnalyticsInstance?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, resourceAnalyticsInstance
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                resourceAnalyticsInstance: ResourceAnalyticsInstance? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.resourceAnalyticsInstance = resourceAnalyticsInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetResourceAnalyticsInstanceResponse: CustomStringConvertible {
    public var description: String { "GetResourceAnalyticsInstanceResponse()" }
}