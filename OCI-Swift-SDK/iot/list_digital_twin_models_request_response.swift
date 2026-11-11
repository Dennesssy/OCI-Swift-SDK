import Foundation

// MARK: - ListDigitalTwinModelsRequest

public struct ListDigitalTwinModelsRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var id: String?
    public var displayName: String?
    public var specUriStartsWith: String?
    public var limit: Int?
    public var page: String?
    public var lifecycleState: ListDigitalTwinModelsLifecycleStateEnum?
    public var sortOrder: ListDigitalTwinModelsSortOrderEnum?
    public var sortBy: ListDigitalTwinModelsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, id, displayName, specUriStartsWith, limit, page, lifecycleState, sortOrder, sortBy, opcRequestId
    }

    public init(
                iotDomainId: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                specUriStartsWith: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                lifecycleState: ListDigitalTwinModelsLifecycleStateEnum? = nil,
                sortOrder: ListDigitalTwinModelsSortOrderEnum? = nil,
                sortBy: ListDigitalTwinModelsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.id = id
        self.displayName = displayName
        self.specUriStartsWith = specUriStartsWith
        self.limit = limit
        self.page = page
        self.lifecycleState = lifecycleState
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinModelsRequest: CustomStringConvertible {
    public var description: String { "ListDigitalTwinModelsRequest()" }
}

// MARK: - ListDigitalTwinModelsResponse

public struct ListDigitalTwinModelsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var digitalTwinModelCollection: DigitalTwinModelCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, digitalTwinModelCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                digitalTwinModelCollection: DigitalTwinModelCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.digitalTwinModelCollection = digitalTwinModelCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinModelsResponse: CustomStringConvertible {
    public var description: String { "ListDigitalTwinModelsResponse()" }
}