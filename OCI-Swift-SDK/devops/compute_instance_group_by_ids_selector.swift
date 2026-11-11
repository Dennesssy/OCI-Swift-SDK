import Foundation

// MARK: - ComputeInstanceGroupByIdsSelector

public struct ComputeInstanceGroupByIdsSelector: Codable, Sendable {

    public var computeInstanceIds: [String]

    private enum CodingKeys: String, CodingKey {
        case computeInstanceIds
    }

    public init(
                computeInstanceIds: [String]
    ) {
        self.computeInstanceIds = computeInstanceIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupByIdsSelector: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupByIdsSelector()" }
}