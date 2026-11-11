import Foundation

// MARK: - BulkEditSecurityAttributeDetails

public struct BulkEditSecurityAttributeDetails: Codable, Sendable {

    public var compartmentId: String?
    public var resources: [BulkEditResource]
    public var bulkEditOperations: [BulkEditSecurityAttributeOperationDetails]

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resources, bulkEditOperations
    }

    public init(
                compartmentId: String? = nil,
                resources: [BulkEditResource],
                bulkEditOperations: [BulkEditSecurityAttributeOperationDetails]
    ) {
        self.compartmentId = compartmentId
        self.resources = resources
        self.bulkEditOperations = bulkEditOperations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditSecurityAttributeDetails: CustomStringConvertible {
    public var description: String { "BulkEditSecurityAttributeDetails()" }
}