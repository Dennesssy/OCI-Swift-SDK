import Foundation

// MARK: - ListSecurityAttributeWorkRequestsRequest

public struct ListSecurityAttributeWorkRequestsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var resourceIdentifier: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, resourceIdentifier, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                resourceIdentifier: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.resourceIdentifier = resourceIdentifier
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSecurityAttributeWorkRequestsRequest: CustomStringConvertible {
    public var description: String { "ListSecurityAttributeWorkRequestsRequest()" }
}

// MARK: - ListSecurityAttributeWorkRequestsResponse

public struct ListSecurityAttributeWorkRequestsResponse: Codable, Sendable {
    public var items: [SecurityAttributeWorkRequestSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [SecurityAttributeWorkRequestSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSecurityAttributeWorkRequestsResponse: CustomStringConvertible {
    public var description: String { "ListSecurityAttributeWorkRequestsResponse()" }
}