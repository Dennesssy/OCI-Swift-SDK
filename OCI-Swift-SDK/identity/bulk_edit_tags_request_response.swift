import Foundation

// MARK: - BulkEditTagsRequest

public struct BulkEditTagsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var bulkEditTagsDetails: BulkEditTagsDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, bulkEditTagsDetails
    }

    public init(
                opcRequestId: String? = nil,
                bulkEditTagsDetails: BulkEditTagsDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.bulkEditTagsDetails = bulkEditTagsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkEditTagsRequest: CustomStringConvertible {
    public var description: String { "BulkEditTagsRequest()" }
}

// MARK: - BulkEditTagsResponse

public struct BulkEditTagsResponse: Codable, Sendable {
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

extension BulkEditTagsResponse: CustomStringConvertible {
    public var description: String { "BulkEditTagsResponse()" }
}