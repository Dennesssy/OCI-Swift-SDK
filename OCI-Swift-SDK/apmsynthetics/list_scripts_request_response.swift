import Foundation

// MARK: - ListScriptsRequest

public struct ListScriptsRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var opcRequestId: String?
    public var displayName: String?
    public var contentType: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListScriptsSortOrderEnum?
    public var sortBy: ListScriptsSortByEnum?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, opcRequestId, displayName, contentType, limit, page, sortOrder, sortBy
    }

    public init(
                apmDomainId: String? = nil,
                opcRequestId: String? = nil,
                displayName: String? = nil,
                contentType: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListScriptsSortOrderEnum? = nil,
                sortBy: ListScriptsSortByEnum? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.opcRequestId = opcRequestId
        self.displayName = displayName
        self.contentType = contentType
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListScriptsRequest: CustomStringConvertible {
    public var description: String { "ListScriptsRequest()" }
}

// MARK: - ListScriptsResponse

public struct ListScriptsResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var scriptCollection: ScriptCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, scriptCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                scriptCollection: ScriptCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.scriptCollection = scriptCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListScriptsResponse: CustomStringConvertible {
    public var description: String { "ListScriptsResponse()" }
}