import Foundation

// MARK: - GetCostAlertSubscriptionRequest

public struct GetCostAlertSubscriptionRequest: Codable, Sendable {
    public var costAlertSubscriptionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case costAlertSubscriptionId, opcRequestId
    }

    public init(
                costAlertSubscriptionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.costAlertSubscriptionId = costAlertSubscriptionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCostAlertSubscriptionRequest: CustomStringConvertible {
    public var description: String { "GetCostAlertSubscriptionRequest()" }
}

// MARK: - GetCostAlertSubscriptionResponse

public struct GetCostAlertSubscriptionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var costAlertSubscription: CostAlertSubscription?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, costAlertSubscription
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                costAlertSubscription: CostAlertSubscription? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.costAlertSubscription = costAlertSubscription
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCostAlertSubscriptionResponse: CustomStringConvertible {
    public var description: String { "GetCostAlertSubscriptionResponse()" }
}