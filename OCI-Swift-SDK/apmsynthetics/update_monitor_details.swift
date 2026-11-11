import Foundation
import OCICommon

// MARK: - UpdateMonitorDetails

public struct UpdateMonitorDetails: Codable, Sendable {

    public var displayName: String?
    public var vantagePoints: [String]?
    public var scriptId: String?
    public var status: MonitorStatusEnum?
    public var repeatIntervalInSeconds: Int?
    public var isRunOnce: Bool?
    public var timeoutInSeconds: Int?
    public var target: String?
    public var scriptParameters: [MonitorScriptParameter]?
    public var configuration: JSONValue?
    public var availabilityConfiguration: AvailabilityConfiguration?
    public var maintenanceWindowSchedule: MaintenanceWindowSchedule?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var isRunNow: Bool?
    public var schedulingPolicy: SchedulingPolicyEnum?
    public var batchIntervalInSeconds: Int?
    public var isIPv6: Bool?

    private enum CodingKeys: String, CodingKey {
        case displayName, vantagePoints, scriptId, status, repeatIntervalInSeconds, isRunOnce, timeoutInSeconds, target, scriptParameters, configuration, availabilityConfiguration, maintenanceWindowSchedule, freeformTags, definedTags, isRunNow, schedulingPolicy, batchIntervalInSeconds, isIPv6
    }

    public init(
                displayName: String? = nil,
                vantagePoints: [String]? = nil,
                scriptId: String? = nil,
                status: MonitorStatusEnum? = nil,
                repeatIntervalInSeconds: Int? = nil,
                isRunOnce: Bool? = nil,
                timeoutInSeconds: Int? = nil,
                target: String? = nil,
                scriptParameters: [MonitorScriptParameter]? = nil,
                configuration: JSONValue? = nil,
                availabilityConfiguration: AvailabilityConfiguration? = nil,
                maintenanceWindowSchedule: MaintenanceWindowSchedule? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                isRunNow: Bool? = nil,
                schedulingPolicy: SchedulingPolicyEnum? = nil,
                batchIntervalInSeconds: Int? = nil,
                isIPv6: Bool? = nil
    ) {
        self.displayName = displayName
        self.vantagePoints = vantagePoints
        self.scriptId = scriptId
        self.status = status
        self.repeatIntervalInSeconds = repeatIntervalInSeconds
        self.isRunOnce = isRunOnce
        self.timeoutInSeconds = timeoutInSeconds
        self.target = target
        self.scriptParameters = scriptParameters
        self.configuration = configuration
        self.availabilityConfiguration = availabilityConfiguration
        self.maintenanceWindowSchedule = maintenanceWindowSchedule
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.isRunNow = isRunNow
        self.schedulingPolicy = schedulingPolicy
        self.batchIntervalInSeconds = batchIntervalInSeconds
        self.isIPv6 = isIPv6
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateMonitorDetails: CustomStringConvertible {
    public var description: String { "UpdateMonitorDetails()" }
}