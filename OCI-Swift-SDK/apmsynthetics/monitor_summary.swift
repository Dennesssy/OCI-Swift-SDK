import Foundation
import OCICommon

// MARK: - MonitorSummary

public struct MonitorSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var monitorType: MonitorTypesEnum
    public var vantagePoints: [VantagePointInfo]
    public var vantagePointCount: Int?
    public var scriptId: String?
    public var scriptName: String?
    public var status: MonitorStatusEnum
    public var repeatIntervalInSeconds: Int?
    public var isRunOnce: Bool?
    public var timeoutInSeconds: Int?
    public var isRunNow: Bool?
    public var schedulingPolicy: SchedulingPolicyEnum
    public var batchIntervalInSeconds: Int?
    public var target: String?
    public var configuration: JSONValue?
    public var maintenanceWindowSchedule: MaintenanceWindowSchedule?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isIPv6: Bool?
    public var createdBy: String?
    public var lastUpdatedBy: String?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, monitorType, vantagePoints, vantagePointCount, scriptId, scriptName, status, repeatIntervalInSeconds, isRunOnce, timeoutInSeconds, isRunNow, schedulingPolicy, batchIntervalInSeconds, target, configuration, maintenanceWindowSchedule, timeCreated, timeUpdated, freeformTags, definedTags, isIPv6, createdBy, lastUpdatedBy
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                monitorType: MonitorTypesEnum,
                vantagePoints: [VantagePointInfo],
                vantagePointCount: Int? = nil,
                scriptId: String? = nil,
                scriptName: String? = nil,
                status: MonitorStatusEnum,
                repeatIntervalInSeconds: Int? = nil,
                isRunOnce: Bool? = nil,
                timeoutInSeconds: Int? = nil,
                isRunNow: Bool? = nil,
                schedulingPolicy: SchedulingPolicyEnum,
                batchIntervalInSeconds: Int? = nil,
                target: String? = nil,
                configuration: JSONValue? = nil,
                maintenanceWindowSchedule: MaintenanceWindowSchedule? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isIPv6: Bool? = nil,
                createdBy: String? = nil,
                lastUpdatedBy: String? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.monitorType = monitorType
        self.vantagePoints = vantagePoints
        self.vantagePointCount = vantagePointCount
        self.scriptId = scriptId
        self.scriptName = scriptName
        self.status = status
        self.repeatIntervalInSeconds = repeatIntervalInSeconds
        self.isRunOnce = isRunOnce
        self.timeoutInSeconds = timeoutInSeconds
        self.isRunNow = isRunNow
        self.schedulingPolicy = schedulingPolicy
        self.batchIntervalInSeconds = batchIntervalInSeconds
        self.target = target
        self.configuration = configuration
        self.maintenanceWindowSchedule = maintenanceWindowSchedule
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isIPv6 = isIPv6
        self.createdBy = createdBy
        self.lastUpdatedBy = lastUpdatedBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorSummary: CustomStringConvertible {
    public var description: String { "MonitorSummary()" }
}