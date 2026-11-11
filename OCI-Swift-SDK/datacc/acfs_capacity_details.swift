import Foundation

// MARK: - AcfsCapacityDetails

public struct AcfsCapacityDetails: Codable, Sendable {

    public var totalSpaceInGbs: Double?
    public var freeSpaceInGbs: Double?

    private enum CodingKeys: String, CodingKey {
        case totalSpaceInGbs, freeSpaceInGbs
    }

    public init(
                totalSpaceInGbs: Double? = nil,
                freeSpaceInGbs: Double? = nil
    ) {
        self.totalSpaceInGbs = totalSpaceInGbs
        self.freeSpaceInGbs = freeSpaceInGbs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AcfsCapacityDetails: CustomStringConvertible {
    public var description: String { "AcfsCapacityDetails()" }
}