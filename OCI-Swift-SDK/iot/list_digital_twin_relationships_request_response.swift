import Foundation

// MARK: - ListDigitalTwinRelationshipsRequest

public struct ListDigitalTwinRelationshipsRequest: Codable, Sendable {
    public var iotDomainId: String?
    public var displayName: String?
    public var contentPath: String?
    public var sourceDigitalTwinInstanceId: String?
    public var targetDigitalTwinInstanceId: String?
    public var lifecycleState: ListDigitalTwinRelationshipsLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDigitalTwinRelationshipsSortOrderEnum?
    public var sortBy: ListDigitalTwinRelationshipsSortByEnum?
    public var opcRequestId: String?
    public var id: String?

    private enum CodingKeys: String, CodingKey {
        case iotDomainId, displayName, contentPath, sourceDigitalTwinInstanceId, targetDigitalTwinInstanceId, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId, id
    }

    public init(
                iotDomainId: String? = nil,
                displayName: String? = nil,
                contentPath: String? = nil,
                sourceDigitalTwinInstanceId: String? = nil,
                targetDigitalTwinInstanceId: String? = nil,
                lifecycleState: ListDigitalTwinRelationshipsLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDigitalTwinRelationshipsSortOrderEnum? = nil,
                sortBy: ListDigitalTwinRelationshipsSortByEnum? = nil,
                opcRequestId: String? = nil,
                id: String? = nil
    ) {
        self.iotDomainId = iotDomainId
        self.displayName = displayName
        self.contentPath = contentPath
        self.sourceDigitalTwinInstanceId = sourceDigitalTwinInstanceId
        self.targetDigitalTwinInstanceId = targetDigitalTwinInstanceId
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.id = id
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinRelationshipsRequest: CustomStringConvertible {
    public var description: String { "ListDigitalTwinRelationshipsRequest()" }
}

// MARK: - ListDigitalTwinRelationshipsResponse

public struct ListDigitalTwinRelationshipsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var digitalTwinRelationshipCollection: DigitalTwinRelationshipCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, digitalTwinRelationshipCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                digitalTwinRelationshipCollection: DigitalTwinRelationshipCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.digitalTwinRelationshipCollection = digitalTwinRelationshipCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDigitalTwinRelationshipsResponse: CustomStringConvertible {
    public var description: String { "ListDigitalTwinRelationshipsResponse()" }
}