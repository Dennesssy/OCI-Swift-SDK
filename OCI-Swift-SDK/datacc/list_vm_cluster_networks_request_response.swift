import Foundation

// MARK: - ListVmClusterNetworksRequest

public struct ListVmClusterNetworksRequest: Codable, Sendable {
    public var compartmentId: String?
    public var displayName: String?
    public var lifecycleState: [VmClusterNetworkLifecycleStateEnum]?
    public var isScanEnabled: Bool?
    public var limit: Int?
    public var page: String?
    public var sortOrder: ListVmClusterNetworksSortOrderEnum?
    public var sortBy: ListVmClusterNetworksSortByEnum?
    public var opcRequestId: String?
    public var infrastructureId: String?
    public var nodeCount: Int?
    public var vmNetworkConsumerType: ListVmClusterNetworksVmNetworkConsumerTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, lifecycleState, isScanEnabled, limit, page, sortOrder, sortBy, opcRequestId, infrastructureId, nodeCount, vmNetworkConsumerType
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                lifecycleState: [VmClusterNetworkLifecycleStateEnum]? = nil,
                isScanEnabled: Bool? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: ListVmClusterNetworksSortOrderEnum? = nil,
                sortBy: ListVmClusterNetworksSortByEnum? = nil,
                opcRequestId: String? = nil,
                infrastructureId: String? = nil,
                nodeCount: Int? = nil,
                vmNetworkConsumerType: ListVmClusterNetworksVmNetworkConsumerTypeEnum? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.lifecycleState = lifecycleState
        self.isScanEnabled = isScanEnabled
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.sortBy = sortBy
        self.opcRequestId = opcRequestId
        self.infrastructureId = infrastructureId
        self.nodeCount = nodeCount
        self.vmNetworkConsumerType = vmNetworkConsumerType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVmClusterNetworksRequest: CustomStringConvertible {
    public var description: String { "ListVmClusterNetworksRequest()" }
}

// MARK: - ListVmClusterNetworksResponse

public struct ListVmClusterNetworksResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcNextPage: String?
    public var vmClusterNetworkCollection: VmClusterNetworkCollection?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcNextPage, vmClusterNetworkCollection
    }

    public init(
                opcRequestId: String? = nil,
                opcNextPage: String? = nil,
                vmClusterNetworkCollection: VmClusterNetworkCollection? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcNextPage = opcNextPage
        self.vmClusterNetworkCollection = vmClusterNetworkCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListVmClusterNetworksResponse: CustomStringConvertible {
    public var description: String { "ListVmClusterNetworksResponse()" }
}