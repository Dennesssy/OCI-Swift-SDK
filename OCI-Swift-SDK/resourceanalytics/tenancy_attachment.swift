import Foundation
import OCICommon

// MARK: - TenancyAttachment

public struct TenancyAttachment: Codable, Sendable {

    public var id: String?
    public var resourceAnalyticsInstanceId: String?
    public var tenancyId: String?
    public var isReportingTenancy: Bool?
    public var monitoredRegions: [TenancyAttachmentMonitoredRegionSummary]
    public var dataPopulationStatus: TenancyAttachmentDataPopulationStatusEnum
    public var timeCreated: Date?
    public var lifecycleState: TenancyAttachmentLifecycleStateEnum
    public var description: String?
    public var timeDataPopulationStarted: Date?
    public var timeDataPopulationEnded: Date?
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, resourceAnalyticsInstanceId, tenancyId, isReportingTenancy, monitoredRegions, dataPopulationStatus, timeCreated, lifecycleState, description, timeDataPopulationStarted, timeDataPopulationEnded, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                resourceAnalyticsInstanceId: String? = nil,
                tenancyId: String? = nil,
                isReportingTenancy: Bool? = nil,
                monitoredRegions: [TenancyAttachmentMonitoredRegionSummary],
                dataPopulationStatus: TenancyAttachmentDataPopulationStatusEnum,
                timeCreated: Date? = nil,
                lifecycleState: TenancyAttachmentLifecycleStateEnum,
                description: String? = nil,
                timeDataPopulationStarted: Date? = nil,
                timeDataPopulationEnded: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.tenancyId = tenancyId
        self.isReportingTenancy = isReportingTenancy
        self.monitoredRegions = monitoredRegions
        self.dataPopulationStatus = dataPopulationStatus
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.description = description
        self.timeDataPopulationStarted = timeDataPopulationStarted
        self.timeDataPopulationEnded = timeDataPopulationEnded
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
