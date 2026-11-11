import Foundation

// MARK: - ListSecurityAttributesRequest

public struct ListSecurityAttributesRequest: Codable, Sendable {
    public var securityAttributeNamespaceId: String?
    public var page: String?
    public var limit: Int?
    public var opcRequestId: String?
    public var lifecycleState: SecurityAttributeLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case securityAttributeNamespaceId, page, limit, opcRequestId, lifecycleState
    }

    public init(
                securityAttributeNamespaceId: String? = nil,
                page: String? = nil,
                limit: Int? = nil,
                opcRequestId: String? = nil,
                lifecycleState: SecurityAttributeLifecycleStateEnum? = nil
    ) {
        self.securityAttributeNamespaceId = securityAttributeNamespaceId
        self.page = page
        self.limit = limit
        self.opcRequestId = opcRequestId
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSecurityAttributesRequest: CustomStringConvertible {
    public var description: String { "ListSecurityAttributesRequest()" }
}

// MARK: - ListSecurityAttributesResponse

public struct ListSecurityAttributesResponse: Codable, Sendable {
    public var items: [SecurityAttributeSummary]?
    public var opcRequestId: String?
    public var opcNextPage: String?

    private enum CodingKeys: String, CodingKey {
        case items, opcRequestId, opcNextPage
    }

    public init(
                items: [SecurityAttributeSummary]? = nil,
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

extension ListSecurityAttributesResponse: CustomStringConvertible {
    public var description: String { "ListSecurityAttributesResponse()" }
}