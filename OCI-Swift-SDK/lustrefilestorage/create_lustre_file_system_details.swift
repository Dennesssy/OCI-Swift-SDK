import Foundation
import OCICommon

// MARK: - CreateLustreFileSystemDetails

public struct CreateLustreFileSystemDetails: Codable, Sendable {

    public var compartmentId: String?
    public var availabilityDomain: String?
    public var fileSystemName: String?
    public var capacityInGBs: Int?
    public var subnetId: String?
    public var performanceTier: CreateLustreFileSystemDetailsPerformanceTierEnum
    public var rootSquashConfiguration: RootSquashConfiguration?
    public var displayName: String?
    public var fileSystemDescription: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var nsgIds: [String]?
    public var kmsKeyId: String?
    public var clusterPlacementGroupId: String?
    public var maintenanceWindow: MaintenanceWindow?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, fileSystemName, capacityInGBs, subnetId, performanceTier, rootSquashConfiguration, displayName, fileSystemDescription, freeformTags, definedTags, nsgIds, kmsKeyId, clusterPlacementGroupId, maintenanceWindow
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                fileSystemName: String? = nil,
                capacityInGBs: Int? = nil,
                subnetId: String? = nil,
                performanceTier: CreateLustreFileSystemDetailsPerformanceTierEnum,
                rootSquashConfiguration: RootSquashConfiguration? = nil,
                displayName: String? = nil,
                fileSystemDescription: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                nsgIds: [String]? = nil,
                kmsKeyId: String? = nil,
                clusterPlacementGroupId: String? = nil,
                maintenanceWindow: MaintenanceWindow? = nil
    ) {
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.fileSystemName = fileSystemName
        self.capacityInGBs = capacityInGBs
        self.subnetId = subnetId
        self.performanceTier = performanceTier
        self.rootSquashConfiguration = rootSquashConfiguration
        self.displayName = displayName
        self.fileSystemDescription = fileSystemDescription
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.nsgIds = nsgIds
        self.kmsKeyId = kmsKeyId
        self.clusterPlacementGroupId = clusterPlacementGroupId
        self.maintenanceWindow = maintenanceWindow
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateLustreFileSystemDetails: CustomStringConvertible {
    public var description: String { "CreateLustreFileSystemDetails()" }
}