import Foundation

// MARK: - ListKafkaClustersRequest

public struct ListKafkaClustersRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: KafkaClusterLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListKafkaClustersSortOrderEnum?
    public var sortBy: ListKafkaClustersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: KafkaClusterLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListKafkaClustersSortOrderEnum? = nil,
                sortBy: ListKafkaClustersSortByEnum? = nil,
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

extension ListKafkaClustersRequest: CustomStringConvertible {
    public var description: String { "ListKafkaClustersRequest()" }
}

// MARK: - ListKafkaClustersResponse

public struct ListKafkaClustersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var kafkaClusterCollection: KafkaClusterCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, kafkaClusterCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                kafkaClusterCollection: KafkaClusterCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.kafkaClusterCollection = kafkaClusterCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListKafkaClustersResponse: CustomStringConvertible {
    public var description: String { "ListKafkaClustersResponse()" }
}