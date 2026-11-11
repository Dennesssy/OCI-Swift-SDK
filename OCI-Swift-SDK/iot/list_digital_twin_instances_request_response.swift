import Foundation

// MARK: - ListDigitalTwinInstancesRequest

public struct ListDigitalTwinInstancesRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var lifecycleState: ListDigitalTwinInstancesLifecycleStateEnum?
    public var sortOrder: ListDigitalTwinInstancesSortOrderEnum?
    public var sortBy: ListDigitalTwinInstancesSortByEnum?
    public var opcRequestId: String?
    public var digitalTwinModelId: String?
    public var digitalTwinModelSpecUri: String?
    public var connectivityType: ListDigitalTwinInstancesConnectivityTypeEnum?
    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, displayName, limit, page, lifecycleState, sortOrder, sortBy, opcRequestId, digitalTwinModelId, digitalTwinModelSpecUri, connectivityType, id
    }

    public init(
                iotDomainId: String? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                lifecycleState: ListDigitalTwinInstancesLifecycleStateEnum? = nil,
                sortOrder: ListDigitalTwinInstancesSortOrderEnum? = nil,
                sortBy: ListDigitalTwinInstancesSortByEnum? = nil,
                opcRequestId: String? = nil,
                digitalTwinModelId: String? = nil,
                digitalTwinModelSpecUri: String? = nil,
                connectivityType: ListDigitalTwinInstancesConnectivityTypeEnum? = nil,
                id: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.displayName = displayName
        self.limit = limit
        self.page = page
        self.lifecycleState = lifecycleState
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.digitalTwinModelId = digitalTwinModelId
        self.digitalTwinModelSpecUri = digitalTwinModelSpecUri
        self.connectivityType = connectivityType
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinInstancesRequest: CustomStringConvertible {
    public var description: String { "ListDigitalTwinInstancesRequest()" }
}

// MARK: - ListDigitalTwinInstancesResponse

public struct ListDigitalTwinInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var digitalTwinInstanceCollection: DigitalTwinInstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, digitalTwinInstanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                digitalTwinInstanceCollection: DigitalTwinInstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.digitalTwinInstanceCollection = digitalTwinInstanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinInstancesResponse: CustomStringConvertible {
    public var description: String { "ListDigitalTwinInstancesResponse()" }
}