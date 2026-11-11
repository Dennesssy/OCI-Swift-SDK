import Foundation
import OCICommon

// MARK: - CostAnomalyEvent

public struct CostAnomalyEvent: Codable, Sendable {

    public var id: String?
    public var costAnomalyName: String?
    public var compartmentId: String?
    public var lifecycleState: CostAnomalyEventLifecycleStateEnum
    public var costMonitorId: String?
    public var costMonitorName: String?
    public var targetResourceFilter: TargetResourceFilter?
    public var timeAnomalyEventDate: Date?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var costMonitorType: MonitorTypeEnum?
    public var costImpact: Double?
    public var costVariancePercentage: Double?
    public var rootCauseDetail: RootCauseDetail?
    public var feedbackResponse: CostAnomalyEventFeedbackResponseEnum?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, costAnomalyName, compartmentId, lifecycleState, costMonitorId, costMonitorName, targetResourceFilter, timeAnomalyEventDate, timeCreated, timeUpdated, costMonitorType, costImpact, costVariancePercentage, rootCauseDetail, feedbackResponse, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                costAnomalyName: String? = nil,
                compartmentId: String? = nil,
                lifecycleState: CostAnomalyEventLifecycleStateEnum,
                costMonitorId: String? = nil,
                costMonitorName: String? = nil,
                targetResourceFilter: TargetResourceFilter? = nil,
                timeAnomalyEventDate: Date? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                costMonitorType: MonitorTypeEnum? = nil,
                costImpact: Double? = nil,
                costVariancePercentage: Double? = nil,
                rootCauseDetail: RootCauseDetail? = nil,
                feedbackResponse: CostAnomalyEventFeedbackResponseEnum? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.costAnomalyName = costAnomalyName
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.costMonitorId = costMonitorId
        self.costMonitorName = costMonitorName
        self.targetResourceFilter = targetResourceFilter
        self.timeAnomalyEventDate = timeAnomalyEventDate
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.costMonitorType = costMonitorType
        self.costImpact = costImpact
        self.costVariancePercentage = costVariancePercentage
        self.rootCauseDetail = rootCauseDetail
        self.feedbackResponse = feedbackResponse
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyEvent: CustomStringConvertible {
    public var description: String { "CostAnomalyEvent()" }
}