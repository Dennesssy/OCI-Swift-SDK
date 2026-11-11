import Foundation

// MARK: - ListAddonsRequest

public struct ListAddonsRequest: Codable, Sendable {
    public var kafkaClusterId: String?
    public var opcRequestId: String?
    public var lifecycleState: KafkaClusterAddonLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var name: String?
    public var sortOrder: ListAddonsSortOrderEnum?
    public var sortBy: ListAddonsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case kafkaClusterId, opcRequestId, lifecycleState, limit, page, name, sortOrder, sortBy
    }

    public init(
                kafkaClusterId: String? = nil,
                opcRequestId: String? = nil,
                lifecycleState: KafkaClusterAddonLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                name: String? = nil,
                sortOrder: ListAddonsSortOrderEnum? = nil,
                sortBy: ListAddonsSortByEnum? = nil
    ) {
        self.kafkaClusterId = kafkaClusterId
        self.opcRequestId = opcRequestId
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.name = name
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAddonsRequest: CustomStringConvertible {
    public var description: String { "ListAddonsRequest()" }
}

// MARK: - ListAddonsResponse

public struct ListAddonsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var addonCollection: AddonCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, addonCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                addonCollection: AddonCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.addonCollection = addonCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAddonsResponse: CustomStringConvertible {
    public var description: String { "ListAddonsResponse()" }
}