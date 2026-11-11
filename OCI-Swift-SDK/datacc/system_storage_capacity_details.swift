import Foundation

// MARK: - SystemStorageCapacityDetails

public struct SystemStorageCapacityDetails: Codable, Sendable {

    public var diskGroups: [DiskGroupCapacityDetails]?
    public var acfs: AcfsCapacityDetails?

    private enum CodingKeys: String, CodingKey {
        case diskGroups, acfs
    }

    public init(
                diskGroups: [DiskGroupCapacityDetails]? = nil,
                acfs: AcfsCapacityDetails? = nil
    ) {
        self.diskGroups = diskGroups
        self.acfs = acfs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SystemStorageCapacityDetails: CustomStringConvertible {
    public var description: String { "SystemStorageCapacityDetails()" }
}