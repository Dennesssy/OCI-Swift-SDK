import Foundation

// MARK: - ListRegionSubscriptionsRequest

public struct ListRegionSubscriptionsRequest: Codable, Sendable {
    public var tenancyId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case tenancyId, opcRequestId
    }

    public init(
                tenancyId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.tenancyId = tenancyId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRegionSubscriptionsRequest: CustomStringConvertible {
    public var description: String { "ListRegionSubscriptionsRequest()" }
}

// MARK: - ListRegionSubscriptionsResponse

public struct ListRegionSubscriptionsResponse: Codable, Sendable {
    public var items: [RegionSubscription]?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId
    }

    public init(
                items: [RegionSubscription]? = nil,
                opcRequestId: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListRegionSubscriptionsResponse: CustomStringConvertible {
    public var description: String { "ListRegionSubscriptionsResponse()" }
}