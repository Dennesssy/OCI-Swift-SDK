import Foundation

// MARK: - DeleteCostAlertSubscriptionRequest

public struct DeleteCostAlertSubscriptionRequest: Codable, Sendable {
    public var costAlertSubscriptionId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case costAlertSubscriptionId, ifMatch, opcRequestId
    }

    public init(
                costAlertSubscriptionId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.costAlertSubscriptionId = costAlertSubscriptionId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCostAlertSubscriptionRequest: CustomStringConvertible {
    public var description: String { "DeleteCostAlertSubscriptionRequest()" }
}

// MARK: - DeleteCostAlertSubscriptionResponse

public struct DeleteCostAlertSubscriptionResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCostAlertSubscriptionResponse: CustomStringConvertible {
    public var description: String { "DeleteCostAlertSubscriptionResponse()" }
}