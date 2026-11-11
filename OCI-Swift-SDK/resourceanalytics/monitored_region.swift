import Foundation
import OCICommon

// MARK: - MonitoredRegion

public struct MonitoredRegion: Codable, Sendable {

    public var id: String?
    public var resourceAnalyticsInstanceId: String?
    public var regionId: String?
    public var timeCreated: Date?
    public var lifecycleState: MonitoredRegionLifecycleStateEnum
    public var timeUpdated: Date?
    public var lifecycleDetails: String?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, resourceAnalyticsInstanceId, regionId, timeCreated, lifecycleState, timeUpdated, lifecycleDetails, systemTags
    }

    public init(
                id: String? = nil,
                resourceAnalyticsInstanceId: String? = nil,
                regionId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: MonitoredRegionLifecycleStateEnum,
                timeUpdated: Date? = nil,
                lifecycleDetails: String? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.regionId = regionId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.timeUpdated = timeUpdated
        self.lifecycleDetails = lifecycleDetails
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitoredRegion: CustomStringConvertible {
    public var description: String { "MonitoredRegion()" }
}