import Foundation
import OCICommon

// MARK: - WorkerSummary

public struct WorkerSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var name: String?
    public var versionDetails: OnPremiseVpWorkerVersionDetails?
    public var workerType: OnPremiseVantagePointWorkerTypeEnum
    public var status: OnPremiseVantagePointWorkerStatusEnum
    public var priority: Int?
    public var configurationDetails: JSONValue?
    public var geoInfo: String?
    public var monitorList: [WorkerMonitorList]?
    public var timeLastSyncup: Date?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, name, versionDetails, workerType, status, priority, configurationDetails, geoInfo, monitorList, timeLastSyncup, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                name: String? = nil,
                versionDetails: OnPremiseVpWorkerVersionDetails? = nil,
                workerType: OnPremiseVantagePointWorkerTypeEnum,
                status: OnPremiseVantagePointWorkerStatusEnum,
                priority: Int? = nil,
                configurationDetails: JSONValue? = nil,
                geoInfo: String? = nil,
                monitorList: [WorkerMonitorList]? = nil,
                timeLastSyncup: Date? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.name = name
        self.versionDetails = versionDetails
        self.workerType = workerType
        self.status = status
        self.priority = priority
        self.configurationDetails = configurationDetails
        self.geoInfo = geoInfo
        self.monitorList = monitorList
        self.timeLastSyncup = timeLastSyncup
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkerSummary: CustomStringConvertible {
    public var description: String { "WorkerSummary()" }
}