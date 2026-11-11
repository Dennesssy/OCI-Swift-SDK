import Foundation

// MARK: - ResourceAnalyticsInstanceEnableOacRequest

public struct ResourceAnalyticsInstanceEnableOacRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var resourceAnalyticsInstanceEnableOacDetails: ResourceAnalyticsInstanceEnableOacDetails?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, ifMatch, opcRequestId, resourceAnalyticsInstanceEnableOacDetails
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                resourceAnalyticsInstanceEnableOacDetails: ResourceAnalyticsInstanceEnableOacDetails? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.resourceAnalyticsInstanceEnableOacDetails = resourceAnalyticsInstanceEnableOacDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnalyticsInstanceEnableOacRequest: CustomStringConvertible {
    public var description: String { "ResourceAnalyticsInstanceEnableOacRequest()" }
}

// MARK: - ResourceAnalyticsInstanceEnableOacResponse

public struct ResourceAnalyticsInstanceEnableOacResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnalyticsInstanceEnableOacResponse: CustomStringConvertible {
    public var description: String { "ResourceAnalyticsInstanceEnableOacResponse()" }
}