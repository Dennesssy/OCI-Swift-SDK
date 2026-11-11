import Foundation

// MARK: - ListWorkRequestsRequest

public struct ListWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var resourceId: String?
    public var opcRequestId: String?
    public var page: String?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, resourceId, opcRequestId, page, limit
    }

    public init(
                compartmentId: String? = nil,
                resourceId: String? = nil,
                opcRequestId: String? = nil,
                page: String? = nil,
                limit: Int? = nil
    ) {
        self.compartmentId = compartmentId
        self.resourceId = resourceId
        self.opcRequestId = opcRequestId
        self.page = page
        self.limit = limit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListWorkRequestsRequest()" }
}

// MARK: - ListWorkRequestsResponse

public struct ListWorkRequestsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var workRequestCollection: WorkRequestCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, workRequestCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                workRequestCollection: WorkRequestCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.workRequestCollection = workRequestCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListWorkRequestsResponse()" }
}