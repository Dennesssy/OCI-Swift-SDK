import Foundation

// MARK: - ListNodeShapesRequest

public struct ListNodeShapesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var name: String?
    public var opcRequestId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListNodeShapesSortOrderEnum?
    public var sortBy: ListNodeShapesSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, name, opcRequestId, limit, page, sortOrder, sortBy
    }

    public init(
                compartmentId: String? = nil,
                name: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListNodeShapesSortOrderEnum? = nil,
                sortBy: ListNodeShapesSortByEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.name = name
        self.opcRequestId = opcRequestId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNodeShapesRequest: CustomStringConvertible {
    public var description: String { "ListNodeShapesRequest()" }
}

// MARK: - ListNodeShapesResponse

public struct ListNodeShapesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var nodeShapeCollection: NodeShapeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, nodeShapeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                nodeShapeCollection: NodeShapeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.nodeShapeCollection = nodeShapeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNodeShapesResponse: CustomStringConvertible {
    public var description: String { "ListNodeShapesResponse()" }
}