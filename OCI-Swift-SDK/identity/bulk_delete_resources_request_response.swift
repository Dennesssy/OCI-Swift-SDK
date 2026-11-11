import Foundation

// MARK: - BulkDeleteResourcesRequest

public struct BulkDeleteResourcesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var bulkDeleteResourcesDetails: BulkDeleteResourcesDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, bulkDeleteResourcesDetails
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                bulkDeleteResourcesDetails: BulkDeleteResourcesDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.bulkDeleteResourcesDetails = bulkDeleteResourcesDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteResourcesRequest: CustomStringConvertible {
    public var description: String { "BulkDeleteResourcesRequest()" }
}

// MARK: - BulkDeleteResourcesResponse

public struct BulkDeleteResourcesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteResourcesResponse: CustomStringConvertible {
    public var description: String { "BulkDeleteResourcesResponse()" }
}