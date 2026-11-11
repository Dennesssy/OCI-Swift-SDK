import Foundation

// MARK: - UpdateCostAlertSubscriptionRequest

public struct UpdateCostAlertSubscriptionRequest: Codable, Sendable {
    public var costAlertSubscriptionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateCostAlertSubscriptionDetails: UpdateCostAlertSubscriptionDetails?

    private enum CodingKeys: String, CodingKey {
        case costAlertSubscriptionId, ifMatch, opcRequestId, updateCostAlertSubscriptionDetails
    }

    public init(
                costAlertSubscriptionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateCostAlertSubscriptionDetails: UpdateCostAlertSubscriptionDetails? = nil
    ) {
        self.costAlertSubscriptionId = costAlertSubscriptionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateCostAlertSubscriptionDetails = updateCostAlertSubscriptionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCostAlertSubscriptionRequest: CustomStringConvertible {
    public var description: String { "UpdateCostAlertSubscriptionRequest()" }
}

// MARK: - UpdateCostAlertSubscriptionResponse

public struct UpdateCostAlertSubscriptionResponse: Codable, Sendable {
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

extension UpdateCostAlertSubscriptionResponse: CustomStringConvertible {
    public var description: String { "UpdateCostAlertSubscriptionResponse()" }
}