import Foundation

// MARK: - ListAiDataPlatformsRequest

public struct ListAiDataPlatformsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: AiDataPlatformLifecycleStateEnum?
    public var excludeLifecycleState: AiDataPlatformLifecycleStateEnum?
    public var displayName: String?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListAiDataPlatformsSortOrderEnum?
    public var sortBy: ListAiDataPlatformsSortByEnum?
    public var includeLegacy: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, excludeLifecycleState, displayName, id, limit, page, sortOrder, sortBy, includeLegacy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: AiDataPlatformLifecycleStateEnum? = nil,
                excludeLifecycleState: AiDataPlatformLifecycleStateEnum? = nil,
                displayName: String? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListAiDataPlatformsSortOrderEnum? = nil,
                sortBy: ListAiDataPlatformsSortByEnum? = nil,
                includeLegacy: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.excludeLifecycleState = excludeLifecycleState
        self.displayName = displayName
        self.id = id
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.includeLegacy = includeLegacy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAiDataPlatformsRequest: CustomStringConvertible {
    public var description: String { "ListAiDataPlatformsRequest()" }
}

// MARK: - ListAiDataPlatformsResponse

public struct ListAiDataPlatformsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var aiDataPlatformCollection: AiDataPlatformCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, aiDataPlatformCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                aiDataPlatformCollection: AiDataPlatformCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.aiDataPlatformCollection = aiDataPlatformCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListAiDataPlatformsResponse: CustomStringConvertible {
    public var description: String { "ListAiDataPlatformsResponse()" }
}