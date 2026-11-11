import Foundation
import OCICommon

// MARK: - DomainSummary

public struct DomainSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var url: String?
    public var homeRegionUrl: String?
    public var homeRegion: String?
    public var replicaRegions: [ReplicatedRegionDetails]
    public var type: DomainTypeEnum
    public var licenseType: String?
    public var isHiddenOnLogin: Bool?
    public var timeCreated: Date?
    public var lifecycleState: DomainLifecycleStateEnum
    public var lifecycleDetails: DomainSummaryLifecycleDetailsEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, displayName, description, url, homeRegionUrl, homeRegion, replicaRegions, type, licenseType, isHiddenOnLogin, timeCreated, lifecycleState, lifecycleDetails, freeformTags, definedTags
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                url: String? = nil,
                homeRegionUrl: String? = nil,
                homeRegion: String? = nil,
                replicaRegions: [ReplicatedRegionDetails],
                type: DomainTypeEnum,
                licenseType: String? = nil,
                isHiddenOnLogin: Bool? = nil,
                timeCreated: Date? = nil,
                lifecycleState: DomainLifecycleStateEnum,
                lifecycleDetails: DomainSummaryLifecycleDetailsEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.url = url
        self.homeRegionUrl = homeRegionUrl
        self.homeRegion = homeRegion
        self.replicaRegions = replicaRegions
        self.type = type
        self.licenseType = licenseType
        self.isHiddenOnLogin = isHiddenOnLogin
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
