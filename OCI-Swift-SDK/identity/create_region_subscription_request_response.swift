import Foundation

// MARK: - CreateRegionSubscriptionRequest

public struct CreateRegionSubscriptionRequest: Codable, Sendable {
    public var tenancyId: String?
    public var opcRequestId: String?
    public var createRegionSubscriptionDetails: CreateRegionSubscriptionDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case tenancyId, opcRequestId, createRegionSubscriptionDetails, opcRetryToken
    }

    public init(
                tenancyId: String? = nil,
                opcRequestId: String? = nil,
                createRegionSubscriptionDetails: CreateRegionSubscriptionDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.tenancyId = tenancyId
        self.opcRequestId = opcRequestId
        self.createRegionSubscriptionDetails = createRegionSubscriptionDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateRegionSubscriptionRequest: CustomStringConvertible {
    public var description: String { "CreateRegionSubscriptionRequest()" }
}

// MARK: - CreateRegionSubscriptionResponse

public struct CreateRegionSubscriptionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var regionSubscription: RegionSubscription?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, regionSubscription
    }

    public init(
                opcRequestId: String? = nil,
                regionSubscription: RegionSubscription? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.regionSubscription = regionSubscription
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateRegionSubscriptionResponse: CustomStringConvertible {
    public var description: String { "CreateRegionSubscriptionResponse()" }
}