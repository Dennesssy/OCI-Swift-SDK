import Foundation

// MARK: - ListDigitalTwinAdaptersRequest

public struct ListDigitalTwinAdaptersRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var id: String?
    public var digitalTwinModelSpecUri: String?
    public var digitalTwinModelId: String?
    public var displayName: String?
    public var lifecycleState: ListDigitalTwinAdaptersLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDigitalTwinAdaptersSortOrderEnum?
    public var sortBy: ListDigitalTwinAdaptersSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, id, digitalTwinModelSpecUri, digitalTwinModelId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                iotDomainId: String? = nil,
                id: String? = nil,
                digitalTwinModelSpecUri: String? = nil,
                digitalTwinModelId: String? = nil,
                displayName: String? = nil,
                lifecycleState: ListDigitalTwinAdaptersLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDigitalTwinAdaptersSortOrderEnum? = nil,
                sortBy: ListDigitalTwinAdaptersSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.id = id
        self.digitalTwinModelSpecUri = digitalTwinModelSpecUri
        self.digitalTwinModelId = digitalTwinModelId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
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

extension ListDigitalTwinAdaptersRequest: CustomStringConvertible {
    public var description: String { "ListDigitalTwinAdaptersRequest()" }
}

// MARK: - ListDigitalTwinAdaptersResponse

public struct ListDigitalTwinAdaptersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var digitalTwinAdapterCollection: DigitalTwinAdapterCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, digitalTwinAdapterCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                digitalTwinAdapterCollection: DigitalTwinAdapterCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.digitalTwinAdapterCollection = digitalTwinAdapterCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinAdaptersResponse: CustomStringConvertible {
    public var description: String { "ListDigitalTwinAdaptersResponse()" }
}