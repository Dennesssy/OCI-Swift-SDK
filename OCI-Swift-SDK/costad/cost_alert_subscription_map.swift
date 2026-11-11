import Foundation

// MARK: - CostAlertSubscriptionMap

public struct CostAlertSubscriptionMap: Codable, Sendable {

    public var `operator`: CostAlertSubscriptionMapOperatorEnum?
    public var thresholdAbsoluteValue: Int?
    public var thresholdRelativePercent: Int?
    public var costAlertSubscriptionId: String?

    private enum CodingKeys: String, CodingKey {
        case `operator`, thresholdAbsoluteValue, thresholdRelativePercent, costAlertSubscriptionId
    }

    public init(
                `operator`: CostAlertSubscriptionMapOperatorEnum? = nil,
                thresholdAbsoluteValue: Int? = nil,
                thresholdRelativePercent: Int? = nil,
                costAlertSubscriptionId: String? = nil
    ) {
        self.`operator` = `operator`
        self.thresholdAbsoluteValue = thresholdAbsoluteValue
        self.thresholdRelativePercent = thresholdRelativePercent
        self.costAlertSubscriptionId = costAlertSubscriptionId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAlertSubscriptionMap: CustomStringConvertible {
    public var description: String { "CostAlertSubscriptionMap()" }
}