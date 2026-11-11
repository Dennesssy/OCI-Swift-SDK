import Foundation

// MARK: - ListWorkersRequest

public struct ListWorkersRequest: Codable, Sendable {
    public var apmDomainId: String?
    public var onPremiseVantagePointId: String?
    public var limit: Int?
    public var page: String?
    public var status: ListWorkersStatusEnum?
    public var capability: String?
    public var sortOrder: ListWorkersSortOrderEnum?
    public var sortBy: ListWorkersSortByEnum?
    public var displayName: String?
    public var name: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case apmDomainId, onPremiseVantagePointId, limit, page, status, capability, sortOrder, sortBy, displayName, name, opcRequestId
    }

    public init(
                apmDomainId: String? = nil,
                onPremiseVantagePointId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                status: ListWorkersStatusEnum? = nil,
                capability: String? = nil,
                sortOrder: ListWorkersSortOrderEnum? = nil,
                sortBy: ListWorkersSortByEnum? = nil,
                displayName: String? = nil,
                name: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.apmDomainId = apmDomainId
        self.onPremiseVantagePointId = onPremiseVantagePointId
        self.limit = limit
        self.page = page
        self.status = status
        self.capability = capability
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.displayName = displayName
        self.name = name
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkersRequest: CustomStringConvertible {
    public var description: String { "ListWorkersRequest()" }
}

// MARK: - ListWorkersResponse

public struct ListWorkersResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var workerCollection: WorkerCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, workerCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                workerCollection: WorkerCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.workerCollection = workerCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListWorkersResponse: CustomStringConvertible {
    public var description: String { "ListWorkersResponse()" }
}