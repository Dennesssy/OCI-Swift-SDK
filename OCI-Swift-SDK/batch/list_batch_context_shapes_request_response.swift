import Foundation

// MARK: - ListBatchContextShapesRequest

public struct ListBatchContextShapesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var availabilityDomain: String?
    public var limit: Int?
    public var page: String?
    public var shapeType: ListBatchContextShapesShapeTypeEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, availabilityDomain, limit, page, shapeType, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                availabilityDomain: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                shapeType: ListBatchContextShapesShapeTypeEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.availabilityDomain = availabilityDomain
        self.limit = limit
        self.page = page
        self.shapeType = shapeType
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchContextShapesRequest: CustomStringConvertible {
    public var description: String { "ListBatchContextShapesRequest()" }
}

// MARK: - ListBatchContextShapesResponse

public struct ListBatchContextShapesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var batchContextShapeCollection: BatchContextShapeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, batchContextShapeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                batchContextShapeCollection: BatchContextShapeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.batchContextShapeCollection = batchContextShapeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListBatchContextShapesResponse: CustomStringConvertible {
    public var description: String { "ListBatchContextShapesResponse()" }
}