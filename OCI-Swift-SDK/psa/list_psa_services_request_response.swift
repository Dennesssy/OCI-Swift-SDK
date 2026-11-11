import Foundation

// MARK: - ListPsaServicesRequest

public struct ListPsaServicesRequest: Codable, Sendable {
    public var displayName: String?
    public var serviceId: String?
    public var limit: Int?
    public var page: String?
    public var sortBy: ListPsaServicesSortByEnum?
    public var sortOrder: ListPsaServicesSortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case displayName, serviceId, limit, page, sortBy, sortOrder, opcRequestId
    }

    public init(
                displayName: String? = nil,
                serviceId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortBy: ListPsaServicesSortByEnum? = nil,
                sortOrder: ListPsaServicesSortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.displayName = displayName
        self.serviceId = serviceId
        self.limit = limit
        self.page = page
        self.sortBy = sortBy
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPsaServicesRequest: CustomStringConvertible {
    public var description: String { "ListPsaServicesRequest()" }
}

// MARK: - ListPsaServicesResponse

public struct ListPsaServicesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var psaServiceCollection: PsaServiceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, psaServiceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                psaServiceCollection: PsaServiceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.psaServiceCollection = psaServiceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListPsaServicesResponse: CustomStringConvertible {
    public var description: String { "ListPsaServicesResponse()" }
}