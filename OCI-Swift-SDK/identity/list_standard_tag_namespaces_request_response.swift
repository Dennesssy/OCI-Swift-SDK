import Foundation

// MARK: - ListStandardTagNamespacesRequest

public struct ListStandardTagNamespacesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, page, limit, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListStandardTagNamespacesRequest: CustomStringConvertible {
    public var description: String { "ListStandardTagNamespacesRequest()" }
}

// MARK: - ListStandardTagNamespacesResponse

public struct ListStandardTagNamespacesResponse: Codable, Sendable {
    public var items: [StandardTagNamespaceTemplateSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [StandardTagNamespaceTemplateSummary]? = nil,
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

extension ListStandardTagNamespacesResponse: CustomStringConvertible {
    public var description: String { "ListStandardTagNamespacesResponse()" }
}