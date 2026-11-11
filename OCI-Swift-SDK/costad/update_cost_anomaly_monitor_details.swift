import Foundation
import OCICommon

// MARK: - UpdateCostAnomalyMonitorDetails

public struct UpdateCostAnomalyMonitorDetails: Codable, Sendable {

    public var description: String?
    public var costAlertSubscriptionMap: CostAlertSubscriptionMap?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case description, costAlertSubscriptionMap, definedTags, freeformTags
    }

    public init(
                description: String? = nil,
                costAlertSubscriptionMap: CostAlertSubscriptionMap? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.description = description
        self.costAlertSubscriptionMap = costAlertSubscriptionMap
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
