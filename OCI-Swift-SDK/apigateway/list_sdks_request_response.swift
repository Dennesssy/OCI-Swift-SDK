import Foundation

// MARK: - ListSdksRequest

public struct ListSdksRequest: Codable, Sendable {
    public var sdkId: String?
    public var displayName: String?
    public var lifecycleState: SdkLifecycleStateEnum?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListSdksSortOrderEnum?
    public var sortBy: ListSdksSortByEnum?
    public var apiId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case sdkId, displayName, lifecycleState, limit, page, sortOrder, sortBy, apiId, opcRequestId
    }

    public init(
                sdkId: String? = nil,
                displayName: String? = nil,
                lifecycleState: SdkLifecycleStateEnum? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListSdksSortOrderEnum? = nil,
                sortBy: ListSdksSortByEnum? = nil,
                apiId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.sdkId = sdkId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.apiId = apiId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSdksRequest: CustomStringConvertible {
    public var description: String { "ListSdksRequest()" }
}

// MARK: - ListSdksResponse

public struct ListSdksResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var sdkCollection: SdkCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, sdkCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                sdkCollection: SdkCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.sdkCollection = sdkCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSdksResponse: CustomStringConvertible {
    public var description: String { "ListSdksResponse()" }
}