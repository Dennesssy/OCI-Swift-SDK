import Foundation

// MARK: - ListTenancyAttachmentsRequest

public struct ListTenancyAttachmentsRequest: Codable, Sendable {
    public var resourceAnalyticsInstanceId: String?
    public var lifecycleState: TenancyAttachmentLifecycleStateEnum?
    public var id: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListTenancyAttachmentsSortOrderEnum?
    public var sortBy: ListTenancyAttachmentsSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, lifecycleState, id, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                lifecycleState: TenancyAttachmentLifecycleStateEnum? = nil,
                id: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListTenancyAttachmentsSortOrderEnum? = nil,
                sortBy: ListTenancyAttachmentsSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.lifecycleState = lifecycleState
        self.id = id
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

extension ListTenancyAttachmentsRequest: CustomStringConvertible {
    public var description: String { "ListTenancyAttachmentsRequest()" }
}

// MARK: - ListTenancyAttachmentsResponse

public struct ListTenancyAttachmentsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var tenancyAttachmentCollection: TenancyAttachmentCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, tenancyAttachmentCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                tenancyAttachmentCollection: TenancyAttachmentCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.tenancyAttachmentCollection = tenancyAttachmentCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListTenancyAttachmentsResponse: CustomStringConvertible {
    public var description: String { "ListTenancyAttachmentsResponse()" }
}