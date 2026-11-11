import Foundation
import OCICommon

// MARK: - DedicatedVantagePoint

public struct DedicatedVantagePoint: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var name: String?
    public var status: DedicatedVantagePointStatusEnum
    public var dvpStackDetails: JSONValue
    public var region: String?
    public var monitorStatusCountMap: MonitorStatusCountMap?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, name, status, dvpStackDetails, region, monitorStatusCountMap, timeCreated, timeUpdated, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                name: String? = nil,
                status: DedicatedVantagePointStatusEnum,
                dvpStackDetails: JSONValue,
                region: String? = nil,
                monitorStatusCountMap: MonitorStatusCountMap? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.name = name
        self.status = status
        self.dvpStackDetails = dvpStackDetails
        self.region = region
        self.monitorStatusCountMap = monitorStatusCountMap
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DedicatedVantagePoint: CustomStringConvertible {
    public var description: String { "DedicatedVantagePoint()" }
}