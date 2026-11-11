import Foundation

// MARK: - ListServiceProviderInteractionsRequest

public struct ListServiceProviderInteractionsRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var limit: Int?
    public var page: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, limit, page, opcRequestId
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.limit = limit
        self.page = page
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListServiceProviderInteractionsRequest: CustomStringConvertible {
    public var description: String { "ListServiceProviderInteractionsRequest()" }
}

// MARK: - ListServiceProviderInteractionsResponse

public struct ListServiceProviderInteractionsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var serviceProviderInteractionCollection: ServiceProviderInteractionCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, serviceProviderInteractionCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                serviceProviderInteractionCollection: ServiceProviderInteractionCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.serviceProviderInteractionCollection = serviceProviderInteractionCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListServiceProviderInteractionsResponse: CustomStringConvertible {
    public var description: String { "ListServiceProviderInteractionsResponse()" }
}