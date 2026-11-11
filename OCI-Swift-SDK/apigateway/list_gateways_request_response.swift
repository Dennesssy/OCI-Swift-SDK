import Foundation

// MARK: - ListGatewaysRequest

public struct ListGatewaysRequest: Codable, Sendable {
    public var compartmentId: String?
    public var certificateId: String?
    public var displayName: String?
    public var lifecycleState: GatewayLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListGatewaysSortOrderEnum?
    public var sortBy: ListGatewaysSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, certificateId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                certificateId: String? = nil,
                displayName: String? = nil,
                lifecycleState: GatewayLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListGatewaysSortOrderEnum? = nil,
                sortBy: ListGatewaysSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.certificateId = certificateId
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

extension ListGatewaysRequest: CustomStringConvertible {
    public var description: String { "ListGatewaysRequest()" }
}

// MARK: - ListGatewaysResponse

public struct ListGatewaysResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var gatewayCollection: GatewayCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, gatewayCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                gatewayCollection: GatewayCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.gatewayCollection = gatewayCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListGatewaysResponse: CustomStringConvertible {
    public var description: String { "ListGatewaysResponse()" }
}