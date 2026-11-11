import Foundation

// MARK: - ListKafkaClusterConfigVersionsRequest

public struct ListKafkaClusterConfigVersionsRequest: Codable, Sendable {
    public var kafkaClusterConfigId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListKafkaClusterConfigVersionsSortOrderEnum?
    public var sortBy: ListKafkaClusterConfigVersionsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterConfigId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                kafkaClusterConfigId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListKafkaClusterConfigVersionsSortOrderEnum? = nil,
                sortBy: ListKafkaClusterConfigVersionsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.kafkaClusterConfigId = kafkaClusterConfigId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListKafkaClusterConfigVersionsRequest: CustomStringConvertible {
    public var description: String { "ListKafkaClusterConfigVersionsRequest()" }
}

// MARK: - ListKafkaClusterConfigVersionsResponse

public struct ListKafkaClusterConfigVersionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var kafkaClusterConfigVersionCollection: KafkaClusterConfigVersionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, kafkaClusterConfigVersionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                kafkaClusterConfigVersionCollection: KafkaClusterConfigVersionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.kafkaClusterConfigVersionCollection = kafkaClusterConfigVersionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListKafkaClusterConfigVersionsResponse: CustomStringConvertible {
    public var description: String { "ListKafkaClusterConfigVersionsResponse()" }
}