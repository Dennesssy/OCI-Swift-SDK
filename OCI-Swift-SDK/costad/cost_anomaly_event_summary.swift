import Foundation
import OCICommon

// MARK: - CostAnomalyEventSummary

public struct CostAnomalyEventSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var costMonitorId: String?
    public var costMonitorName: String?
    public var targetResourceFilter: TargetResourceFilter?
    public var rootCauseDetail: RootCauseDetail?
    public var timeAnomalyEventDate: Date?
    public var costAnomalyName: String?
    public var costMonitorType: MonitorTypeEnum?
    public var lifecycleState: CostAnomalyEventLifecycleStateEnum?
    public var costImpact: Double?
    public var costVariancePercentage: Double?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, costMonitorId, costMonitorName, targetResourceFilter, rootCauseDetail, timeAnomalyEventDate, costAnomalyName, costMonitorType, lifecycleState, costImpact, costVariancePercentage, definedTags, freeformTags, systemTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                costMonitorId: String? = nil,
                costMonitorName: String? = nil,
                targetResourceFilter: TargetResourceFilter? = nil,
                rootCauseDetail: RootCauseDetail? = nil,
                timeAnomalyEventDate: Date? = nil,
                costAnomalyName: String? = nil,
                costMonitorType: MonitorTypeEnum? = nil,
                lifecycleState: CostAnomalyEventLifecycleStateEnum? = nil,
                costImpact: Double? = nil,
                costVariancePercentage: Double? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.costMonitorId = costMonitorId
        self.costMonitorName = costMonitorName
        self.targetResourceFilter = targetResourceFilter
        self.rootCauseDetail = rootCauseDetail
        self.timeAnomalyEventDate = timeAnomalyEventDate
        self.costAnomalyName = costAnomalyName
        self.costMonitorType = costMonitorType
        self.lifecycleState = lifecycleState
        self.costImpact = costImpact
        self.costVariancePercentage = costVariancePercentage
        self.definedTags = definedTags
        self.freeformTags = freeformTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyEventSummary: CustomStringConvertible {
    public var description: String { "CostAnomalyEventSummary()" }
}