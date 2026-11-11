import Foundation

// MARK: - ListVmInstancesRequest

public struct ListVmInstancesRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: [VmInstanceLifecycleStateEnum]?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListVmInstancesSortOrderEnum?
    public var sortBy: ListVmInstancesSortByEnum?
    public var opcRequestId: String?
    public var infrastructureId: String?
    public var baseServerId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, limit, page, sortOrder, sortBy, opcRequestId, infrastructureId, baseServerId
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: [VmInstanceLifecycleStateEnum]? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListVmInstancesSortOrderEnum? = nil,
                sortBy: ListVmInstancesSortByEnum? = nil,
                opcRequestId: String? = nil,
                infrastructureId: String? = nil,
                baseServerId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.infrastructureId = infrastructureId
        self.baseServerId = baseServerId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVmInstancesRequest: CustomStringConvertible {
    public var description: String { "ListVmInstancesRequest()" }
}

// MARK: - ListVmInstancesResponse

public struct ListVmInstancesResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var vmInstanceCollection: VmInstanceCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, vmInstanceCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                vmInstanceCollection: VmInstanceCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.vmInstanceCollection = vmInstanceCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVmInstancesResponse: CustomStringConvertible {
    public var description: String { "ListVmInstancesResponse()" }
}