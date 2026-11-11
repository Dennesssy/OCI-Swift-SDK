import Foundation

// MARK: - ComputeCapacityDetails

public struct ComputeCapacityDetails: Codable, Sendable {

    public var totalCores: Int?
    public var allocatedCores: Int?
    public var reservedCores: Int?
    public var availableCores: Int?
    public var totalMemoryInGBs: Int64?
    public var usedMemoryInGBs: Int64?
    public var reservedMemoryInGBs: Int64?
    public var availableMemoryInGBs: Int64?

    private enum CodingKeys: String, CodingKey {
        case totalCores, allocatedCores, reservedCores, availableCores, totalMemoryInGBs, usedMemoryInGBs, reservedMemoryInGBs, availableMemoryInGBs
    }

    public init(
                totalCores: Int? = nil,
                allocatedCores: Int? = nil,
                reservedCores: Int? = nil,
                availableCores: Int? = nil,
                totalMemoryInGBs: Int64? = nil,
                usedMemoryInGBs: Int64? = nil,
                reservedMemoryInGBs: Int64? = nil,
                availableMemoryInGBs: Int64? = nil
    ) {
        self.totalCores = totalCores
        self.allocatedCores = allocatedCores
        self.reservedCores = reservedCores
        self.availableCores = availableCores
        self.totalMemoryInGBs = totalMemoryInGBs
        self.usedMemoryInGBs = usedMemoryInGBs
        self.reservedMemoryInGBs = reservedMemoryInGBs
        self.availableMemoryInGBs = availableMemoryInGBs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeCapacityDetails: CustomStringConvertible {
    public var description: String { "ComputeCapacityDetails()" }
}