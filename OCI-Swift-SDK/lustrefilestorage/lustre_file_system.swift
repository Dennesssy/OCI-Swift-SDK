import Foundation
import OCICommon

// MARK: - LustreFileSystem

public struct LustreFileSystem: Codable, Sendable {

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
    public var capacityInGBs: Int?
    public var subnetId: String?
    public var performanceTier: LustreFileSystemPerformanceTierEnum
    public var managementServiceAddress: String?
    public var fileSystemName: String?
    public var lnet: String?
    public var majorVersion: String?
    public var maintenanceWindow: MaintenanceWindow?
    public var rootSquashConfiguration: RootSquashConfiguration?
    public var lifecycleDetails: String?
    public var nsgIds: [String]?
    public var kmsKeyId: String?
    public var clusterPlacementGroupId: String?
    public var timeBillingCycleEnd: Date?
    public var maintenanceWindowMetadata: MaintenanceWindowMetadataDetails?

    private enum CodingKeys: String, CodingKey {
        case id, compartmentId, availabilityDomain, displayName, fileSystemDescription, timeCreated, timeUpdated, lifecycleState, freeformTags, definedTags, systemTags, capacityInGBs, subnetId, performanceTier, managementServiceAddress, fileSystemName, lnet, majorVersion, maintenanceWindow, rootSquashConfiguration, lifecycleDetails, nsgIds, kmsKeyId, clusterPlacementGroupId, timeBillingCycleEnd, maintenanceWindowMetadata
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
                capacityInGBs: Int? = nil,
                subnetId: String? = nil,
                performanceTier: LustreFileSystemPerformanceTierEnum,
                managementServiceAddress: String? = nil,
                fileSystemName: String? = nil,
                lnet: String? = nil,
                majorVersion: String? = nil,
                maintenanceWindow: MaintenanceWindow? = nil,
                rootSquashConfiguration: RootSquashConfiguration? = nil,
                lifecycleDetails: String? = nil,
                nsgIds: [String]? = nil,
                kmsKeyId: String? = nil,
                clusterPlacementGroupId: String? = nil,
                timeBillingCycleEnd: Date? = nil,
                maintenanceWindowMetadata: MaintenanceWindowMetadataDetails? = nil
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
        self.capacityInGBs = capacityInGBs
        self.subnetId = subnetId
        self.performanceTier = performanceTier
        self.managementServiceAddress = managementServiceAddress
        self.fileSystemName = fileSystemName
        self.lnet = lnet
        self.majorVersion = majorVersion
        self.maintenanceWindow = maintenanceWindow
        self.rootSquashConfiguration = rootSquashConfiguration
        self.lifecycleDetails = lifecycleDetails
        self.nsgIds = nsgIds
        self.kmsKeyId = kmsKeyId
        self.clusterPlacementGroupId = clusterPlacementGroupId
        self.timeBillingCycleEnd = timeBillingCycleEnd
        self.maintenanceWindowMetadata = maintenanceWindowMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LustreFileSystem: CustomStringConvertible {
    public var description: String { "LustreFileSystem()" }
}