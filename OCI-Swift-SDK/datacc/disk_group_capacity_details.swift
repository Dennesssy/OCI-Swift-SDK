import Foundation

// MARK: - DiskGroupCapacityDetails

public struct DiskGroupCapacityDetails: Codable, Sendable {

    public var storageType: String?
    public var totalSpaceInGbs: Double?
    public var reservedSpaceInGbs: Double?
    public var freeSpaceInGbs: Double?

    private enum CodingKeys: String, CodingKey {
        case storageType, totalSpaceInGbs, reservedSpaceInGbs, freeSpaceInGbs
    }

    public init(
                storageType: String? = nil,
                totalSpaceInGbs: Double? = nil,
                reservedSpaceInGbs: Double? = nil,
                freeSpaceInGbs: Double? = nil
    ) {
        self.storageType = storageType
        self.totalSpaceInGbs = totalSpaceInGbs
        self.reservedSpaceInGbs = reservedSpaceInGbs
        self.freeSpaceInGbs = freeSpaceInGbs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiskGroupCapacityDetails: CustomStringConvertible {
    public var description: String { "DiskGroupCapacityDetails()" }
}