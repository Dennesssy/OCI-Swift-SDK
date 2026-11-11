import Foundation

// MARK: - ListSandboxCommandRequest

public struct ListSandboxCommandRequest: Codable, Sendable {
    public var sandboxId: String?
    public var opcRequestId: String?
    public var commandId: String?
    public var sortBy: ListSandboxCommandSortByEnum?
    public var sortOrder: ListSandboxCommandSortOrderEnum?
    public var limit: Int?
    public var page: String?

    private enum CodingKeys: String, CodingKey {
        case sandboxId, opcRequestId, commandId, sortBy, sortOrder, limit, page
    }

    public init(
                sandboxId: String? = nil,
                opcRequestId: String? = nil,
                commandId: String? = nil,
                sortBy: ListSandboxCommandSortByEnum? = nil,
                sortOrder: ListSandboxCommandSortOrderEnum? = nil,
                limit: Int? = nil,
                page: String? = nil
    ) {
        self.sandboxId = sandboxId
        self.opcRequestId = opcRequestId
        self.commandId = commandId
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.limit = limit
        self.page = page
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSandboxCommandRequest: CustomStringConvertible {
    public var description: String { "ListSandboxCommandRequest()" }
}

// MARK: - ListSandboxCommandResponse

public struct ListSandboxCommandResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var sandboxCommandCollection: SandboxCommandCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, sandboxCommandCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                sandboxCommandCollection: SandboxCommandCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.sandboxCommandCollection = sandboxCommandCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListSandboxCommandResponse: CustomStringConvertible {
    public var description: String { "ListSandboxCommandResponse()" }
}