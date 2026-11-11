import Foundation
import OCICommon

// MARK: - Worker

public struct Worker: Codable, Sendable {

    public var id: String?
    public var runtimeId: String?
    public var displayName: String?
    public var name: String?
    public var opvpId: String?
    public var opvpName: String?
    public var versionDetails: OnPremiseVpWorkerVersionDetails?
    public var workerType: OnPremiseVantagePointWorkerTypeEnum
    public var status: OnPremiseVantagePointWorkerStatusEnum
    public var priority: Int?
    public var configurationDetails: JSONValue?
    public var geoInfo: String?
    public var monitorList: [WorkerMonitorList]?
    public var identityInfo: IdentityInfoDetails?
    public var timeLastSyncUp: Date?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, runtimeId, displayName, name, opvpId, opvpName, versionDetails, workerType, status, priority, configurationDetails, geoInfo, monitorList, identityInfo, timeLastSyncUp, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                runtimeId: String? = nil,
                displayName: String? = nil,
                name: String? = nil,
                opvpId: String? = nil,
                opvpName: String? = nil,
                versionDetails: OnPremiseVpWorkerVersionDetails? = nil,
                workerType: OnPremiseVantagePointWorkerTypeEnum,
                status: OnPremiseVantagePointWorkerStatusEnum,
                priority: Int? = nil,
                configurationDetails: JSONValue? = nil,
                geoInfo: String? = nil,
                monitorList: [WorkerMonitorList]? = nil,
                identityInfo: IdentityInfoDetails? = nil,
                timeLastSyncUp: Date? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.runtimeId = runtimeId
        self.displayName = displayName
        self.name = name
        self.opvpId = opvpId
        self.opvpName = opvpName
        self.versionDetails = versionDetails
        self.workerType = workerType
        self.status = status
        self.priority = priority
        self.configurationDetails = configurationDetails
        self.geoInfo = geoInfo
        self.monitorList = monitorList
        self.identityInfo = identityInfo
        self.timeLastSyncUp = timeLastSyncUp
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Worker: CustomStringConvertible {
    public var description: String { "Worker()" }
}