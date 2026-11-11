import Foundation

// MARK: - ListKafkaClusterConfigsRequest

public struct ListKafkaClusterConfigsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: KafkaClusterConfigLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListKafkaClusterConfigsSortOrderEnum?
    public var sortBy: ListKafkaClusterConfigsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: KafkaClusterConfigLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListKafkaClusterConfigsSortOrderEnum? = nil,
                sortBy: ListKafkaClusterConfigsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.id = id
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

extension ListKafkaClusterConfigsRequest: CustomStringConvertible {
    public var description: String { "ListKafkaClusterConfigsRequest()" }
}

// MARK: - ListKafkaClusterConfigsResponse

public struct ListKafkaClusterConfigsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var kafkaClusterConfigCollection: KafkaClusterConfigCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, kafkaClusterConfigCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                kafkaClusterConfigCollection: KafkaClusterConfigCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.kafkaClusterConfigCollection = kafkaClusterConfigCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListKafkaClusterConfigsResponse: CustomStringConvertible {
    public var description: String { "ListKafkaClusterConfigsResponse()" }
}