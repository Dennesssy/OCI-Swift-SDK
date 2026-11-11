import Foundation

// MARK: - BulkMoveResourcesDetails

public struct BulkMoveResourcesDetails: Codable, Sendable {

    public var resources: [BulkActionResource]
    public var targetCompartmentId: String?

    private enum CodingKeys: String, CodingKey {
        case resources, targetCompartmentId
    }

    public init(
                resources: [BulkActionResource],
                targetCompartmentId: String? = nil
    ) {
        self.resources = resources
        self.targetCompartmentId = targetCompartmentId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkMoveResourcesDetails: CustomStringConvertible {
    public var description: String { "BulkMoveResourcesDetails()" }
}