import Foundation

// MARK: - ListExternalLocationDetailsMetadataRequest

public struct ListExternalLocationDetailsMetadataRequest: Codable, Sendable {
    public var subscriptionId: String?
    public var subscriptionServiceName: ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum
    public var entityType: ListExternalLocationDetailsMetadataEntityTypeEnum?
    public var compartmentId: String?
    public var linkedCompartmentId: String?
    public var externalLocation: String?
    public var logicalZone: String?
    public var clusterPlacementGroupId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListExternalLocationDetailsMetadataSortOrderEnum?
    public var sortBy: ListExternalLocationDetailsMetadataSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case subscriptionId, subscriptionServiceName, entityType, compartmentId, linkedCompartmentId, externalLocation, logicalZone, clusterPlacementGroupId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                subscriptionId: String? = nil,
                subscriptionServiceName: ListExternalLocationDetailsMetadataSubscriptionServiceNameEnum,
                entityType: ListExternalLocationDetailsMetadataEntityTypeEnum? = nil,
                compartmentId: String? = nil,
                linkedCompartmentId: String? = nil,
                externalLocation: String? = nil,
                logicalZone: String? = nil,
                clusterPlacementGroupId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListExternalLocationDetailsMetadataSortOrderEnum? = nil,
                sortBy: ListExternalLocationDetailsMetadataSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.subscriptionId = subscriptionId
        self.subscriptionServiceName = subscriptionServiceName
        self.entityType = entityType
        self.compartmentId = compartmentId
        self.linkedCompartmentId = linkedCompartmentId
        self.externalLocation = externalLocation
        self.logicalZone = logicalZone
        self.clusterPlacementGroupId = clusterPlacementGroupId
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

extension ListExternalLocationDetailsMetadataRequest: CustomStringConvertible {
    public var description: String { "ListExternalLocationDetailsMetadataRequest()" }
}

// MARK: - ListExternalLocationDetailsMetadataResponse

public struct ListExternalLocationDetailsMetadataResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var externalLocationsMetadatumCollection: ExternalLocationsMetadatumCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, externalLocationsMetadatumCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                externalLocationsMetadatumCollection: ExternalLocationsMetadatumCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.externalLocationsMetadatumCollection = externalLocationsMetadatumCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListExternalLocationDetailsMetadataResponse: CustomStringConvertible {
    public var description: String { "ListExternalLocationDetailsMetadataResponse()" }
}