import Foundation

// MARK: - ListOAuthClientCredentialsRequest

public struct ListOAuthClientCredentialsRequest: Codable, Sendable {
    public var userId: String?
    public var page: String?
    public var limit: Int?
    public var lifecycleState: OAuth2ClientCredentialSummaryLifecycleStateEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case userId, page, limit, lifecycleState, opcRequestId
    }

    public init(
                userId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                lifecycleState: OAuth2ClientCredentialSummaryLifecycleStateEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.userId = userId
        self.page = page
        self.limit = limit
        self.lifecycleState = lifecycleState
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOAuthClientCredentialsRequest: CustomStringConvertible {
    public var description: String { "ListOAuthClientCredentialsRequest()" }
}

// MARK: - ListOAuthClientCredentialsResponse

public struct ListOAuthClientCredentialsResponse: Codable, Sendable {
    public var items: [OAuth2ClientCredentialSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [OAuth2ClientCredentialSummary]? = nil,
                opcRequestId: String? = nil,
                opcNextPage: String? = nil
    ) {
        self.items = items
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListOAuthClientCredentialsResponse: CustomStringConvertible {
    public var description: String { "ListOAuthClientCredentialsResponse()" }
}