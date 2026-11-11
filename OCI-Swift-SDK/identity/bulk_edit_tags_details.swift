import Foundation

// MARK: - BulkEditTagsDetails

public struct BulkEditTagsDetails: Codable, Sendable {

    public var compartmentId: String?
    public var resources: [BulkEditResource]
    public var bulkEditOperations: [BulkEditOperationDetails]

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resources, bulkEditOperations
    }

    public init(
                compartmentId: String? = nil,
                resources: [BulkEditResource],
                bulkEditOperations: [BulkEditOperationDetails]
    ) {
        self.compartmentId = compartmentId
        self.resources = resources
        self.bulkEditOperations = bulkEditOperations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditTagsDetails: CustomStringConvertible {
    public var description: String { "BulkEditTagsDetails()" }
}