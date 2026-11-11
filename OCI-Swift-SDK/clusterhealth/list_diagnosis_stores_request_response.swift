import Foundation

// MARK: - ListDiagnosisStoresRequest

public struct ListDiagnosisStoresRequest: Codable, Sendable {
    public var compartmentId: String?
    public var lifecycleState: DiagnosisStoreLifecycleStateEnum?
    public var displayName: String?
    public var diagnosisStoreId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListDiagnosisStoresSortOrderEnum?
    public var sortBy: ListDiagnosisStoresSortByEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, lifecycleState, displayName, diagnosisStoreId, limit, page, sortOrder, sortBy, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                lifecycleState: DiagnosisStoreLifecycleStateEnum? = nil,
                displayName: String? = nil,
                diagnosisStoreId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListDiagnosisStoresSortOrderEnum? = nil,
                sortBy: ListDiagnosisStoresSortByEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.diagnosisStoreId = diagnosisStoreId
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

extension ListDiagnosisStoresRequest: CustomStringConvertible {
    public var description: String { "ListDiagnosisStoresRequest()" }
}

// MARK: - ListDiagnosisStoresResponse

public struct ListDiagnosisStoresResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var diagnosisStoreCollection: DiagnosisStoreCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, diagnosisStoreCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                diagnosisStoreCollection: DiagnosisStoreCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.diagnosisStoreCollection = diagnosisStoreCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListDiagnosisStoresResponse: CustomStringConvertible {
    public var description: String { "ListDiagnosisStoresResponse()" }
}