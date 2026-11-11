import Foundation

// MARK: - BulkDeleteTagsRequest

public struct BulkDeleteTagsRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var bulkDeleteTagsDetails: BulkDeleteTagsDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, isLockOverride, bulkDeleteTagsDetails
    }

    public init(
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                bulkDeleteTagsDetails: BulkDeleteTagsDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.bulkDeleteTagsDetails = bulkDeleteTagsDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeleteTagsRequest: CustomStringConvertible {
    public var description: String { "BulkDeleteTagsRequest()" }
}

// MARK: - BulkDeleteTagsResponse

public struct BulkDeleteTagsResponse: Codable, Sendable {
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

extension BulkDeleteTagsResponse: CustomStringConvertible {
    public var description: String { "BulkDeleteTagsResponse()" }
}