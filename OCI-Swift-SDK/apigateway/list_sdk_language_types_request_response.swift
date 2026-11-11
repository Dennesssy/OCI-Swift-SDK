import Foundation

// MARK: - ListSdkLanguageTypesRequest

public struct ListSdkLanguageTypesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListSdkLanguageTypesSortOrderEnum?
    public var sortBy: ListSdkLanguageTypesSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListSdkLanguageTypesSortOrderEnum? = nil,
                sortBy: ListSdkLanguageTypesSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
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

extension ListSdkLanguageTypesRequest: CustomStringConvertible {
    public var description: String { "ListSdkLanguageTypesRequest()" }
}

// MARK: - ListSdkLanguageTypesResponse

public struct ListSdkLanguageTypesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var opcPrevPage: String?
    public var sdkLanguageTypeCollection: SdkLanguageTypeCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, opcPrevPage, sdkLanguageTypeCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                opcPrevPage: String? = nil,
                sdkLanguageTypeCollection: SdkLanguageTypeCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.opcPrevPage = opcPrevPage
        self.sdkLanguageTypeCollection = sdkLanguageTypeCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSdkLanguageTypesResponse: CustomStringConvertible {
    public var description: String { "ListSdkLanguageTypesResponse()" }
}