import Foundation

// MARK: - StorageCapacityDetails

public struct StorageCapacityDetails: Codable, Sendable {

    public var storageDiskRedundancy: StorageDiskRedundancyEnum?
    public var diskGroup: String?
    public var phyTotalSpaceInGBs: Int64?
    public var phyReservedSpaceInGBs: Int64?
    public var phyFreeSpaceInGBs: Int64?
    public var logicalFreeSpaceInGBs: Int64?

    private enum CodingKeys: String, CodingKey {
        case storageDiskRedundancy, diskGroup, phyTotalSpaceInGBs, phyReservedSpaceInGBs, phyFreeSpaceInGBs, logicalFreeSpaceInGBs
    }

    public init(
                storageDiskRedundancy: StorageDiskRedundancyEnum? = nil,
                diskGroup: String? = nil,
                phyTotalSpaceInGBs: Int64? = nil,
                phyReservedSpaceInGBs: Int64? = nil,
                phyFreeSpaceInGBs: Int64? = nil,
                logicalFreeSpaceInGBs: Int64? = nil
    ) {
        self.storageDiskRedundancy = storageDiskRedundancy
        self.diskGroup = diskGroup
        self.phyTotalSpaceInGBs = phyTotalSpaceInGBs
        self.phyReservedSpaceInGBs = phyReservedSpaceInGBs
        self.phyFreeSpaceInGBs = phyFreeSpaceInGBs
        self.logicalFreeSpaceInGBs = logicalFreeSpaceInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StorageCapacityDetails: CustomStringConvertible {
    public var description: String { "StorageCapacityDetails()" }
}