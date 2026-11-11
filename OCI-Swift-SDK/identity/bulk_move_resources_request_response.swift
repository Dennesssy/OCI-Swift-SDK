import Foundation

// MARK: - BulkMoveResourcesRequest

public struct BulkMoveResourcesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var bulkMoveResourcesDetails: BulkMoveResourcesDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, bulkMoveResourcesDetails
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                bulkMoveResourcesDetails: BulkMoveResourcesDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.bulkMoveResourcesDetails = bulkMoveResourcesDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkMoveResourcesRequest: CustomStringConvertible {
    public var description: String { "BulkMoveResourcesRequest()" }
}

// MARK: - BulkMoveResourcesResponse

public struct BulkMoveResourcesResponse: Codable, Sendable {
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

extension BulkMoveResourcesResponse: CustomStringConvertible {
    public var description: String { "BulkMoveResourcesResponse()" }
}