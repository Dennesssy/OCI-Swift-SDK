import Foundation
import OCICommon

// MARK: - LustreFileSystemSummary

public struct LustreFileSystemSummary: Codable, Sendable {

    public var id: String?
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var displayName: String?
    public var fileSystemDescription: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var lifecycleState: LustreFileSystemLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]
    public var fileSystemName: String?
    public var capacityInGBs: Int?
    public var subnetId: String?
    public var performanceTier: LustreFileSystemSummaryPerformanceTierEnum
    public var timeBillingCycleEnd: Date?
    public var managementServiceAddress: String?
    public var lnet: String?
    public var majorVersion: String?
    public var rootSquashConfiguration: RootSquashConfiguration?
    public var lifecycleDetails: String?
    public var nsgIds: [String]?
    public var kmsKeyId: String?
    public var clusterPlacementGroupId: String?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, availabilityDomain, displayName, fileSystemDescription, timeCreated, timeUpdated, lifecycleState, freeformTags, definedTags, systemTags, fileSystemName, capacityInGBs, subnetId, performanceTier, timeBillingCycleEnd, managementServiceAddress, lnet, majorVersion, rootSquashConfiguration, lifecycleDetails, nsgIds, kmsKeyId, clusterPlacementGroupId
    }

    public init(
                id: String? = nil,
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                displayName: String? = nil,
                fileSystemDescription: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                lifecycleState: LustreFileSystemLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]],
                fileSystemName: String? = nil,
                capacityInGBs: Int? = nil,
                subnetId: String? = nil,
                performanceTier: LustreFileSystemSummaryPerformanceTierEnum,
                timeBillingCycleEnd: Date? = nil,
                managementServiceAddress: String? = nil,
                lnet: String? = nil,
                majorVersion: String? = nil,
                rootSquashConfiguration: RootSquashConfiguration? = nil,
                lifecycleDetails: String? = nil,
                nsgIds: [String]? = nil,
                kmsKeyId: String? = nil,
                clusterPlacementGroupId: String? = nil
    ) {
        self.id = id
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.displayName = displayName
        self.fileSystemDescription = fileSystemDescription
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
        self.fileSystemName = fileSystemName
        self.capacityInGBs = capacityInGBs
        self.subnetId = subnetId
        self.performanceTier = performanceTier
        self.timeBillingCycleEnd = timeBillingCycleEnd
        self.managementServiceAddress = managementServiceAddress
        self.lnet = lnet
        self.majorVersion = majorVersion
        self.rootSquashConfiguration = rootSquashConfiguration
        self.lifecycleDetails = lifecycleDetails
        self.nsgIds = nsgIds
        self.kmsKeyId = kmsKeyId
        self.clusterPlacementGroupId = clusterPlacementGroupId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LustreFileSystemSummary: CustomStringConvertible {
    public var description: String { "LustreFileSystemSummary()" }
}