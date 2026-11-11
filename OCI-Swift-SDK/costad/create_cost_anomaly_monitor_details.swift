import Foundation
import OCICommon

// MARK: - CreateCostAnomalyMonitorDetails

public struct CreateCostAnomalyMonitorDetails: Codable, Sendable {

    public var compartmentId: String?
    public var name: String?
    public var targetResourceFilter: TargetResourceFilter?
    public var description: String?
    public var costAlertSubscriptionMap: CostAlertSubscriptionMap?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, targetResourceFilter, description, costAlertSubscriptionMap, definedTags, freeformTags
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                targetResourceFilter: TargetResourceFilter? = nil,
                description: String? = nil,
                costAlertSubscriptionMap: CostAlertSubscriptionMap? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.targetResourceFilter = targetResourceFilter
        self.description = description
        self.costAlertSubscriptionMap = costAlertSubscriptionMap
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
