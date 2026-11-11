import Foundation

// MARK: - CreateCostAlertSubscriptionRequest

public struct CreateCostAlertSubscriptionRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createCostAlertSubscriptionDetails: CreateCostAlertSubscriptionDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createCostAlertSubscriptionDetails
    }

    public init(
                opcRequestId: String? = nil,
                createCostAlertSubscriptionDetails: CreateCostAlertSubscriptionDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createCostAlertSubscriptionDetails = createCostAlertSubscriptionDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCostAlertSubscriptionRequest: CustomStringConvertible {
    public var description: String { "CreateCostAlertSubscriptionRequest()" }
}

// MARK: - CreateCostAlertSubscriptionResponse

public struct CreateCostAlertSubscriptionResponse: Codable, Sendable {
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

extension CreateCostAlertSubscriptionResponse: CustomStringConvertible {
    public var description: String { "CreateCostAlertSubscriptionResponse()" }
}