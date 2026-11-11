import Foundation

// MARK: - GetMultiCloudResourceDiscoveryRequest

public struct GetMultiCloudResourceDiscoveryRequest: Codable, Sendable {
    public var multiCloudResourceDiscoveryId: String?
    public var limit: Int?
    public var page: String?
    public var sortOrder: GetMultiCloudResourceDiscoverySortOrderEnum?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case multiCloudResourceDiscoveryId, limit, page, sortOrder, opcRequestId
    }

    public init(
                multiCloudResourceDiscoveryId: String? = nil,
                limit: Int? = nil,
                page: String? = nil,
                sortOrder: GetMultiCloudResourceDiscoverySortOrderEnum? = nil,
                opcRequestId: String? = nil
    ) {
        self.multiCloudResourceDiscoveryId = multiCloudResourceDiscoveryId
        self.limit = limit
        self.page = page
        self.sortOrder = sortOrder
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMultiCloudResourceDiscoveryRequest: CustomStringConvertible {
    public var description: String { "GetMultiCloudResourceDiscoveryRequest()" }
}

// MARK: - GetMultiCloudResourceDiscoveryResponse

public struct GetMultiCloudResourceDiscoveryResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var multiCloudResourceDiscovery: MultiCloudResourceDiscovery?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, multiCloudResourceDiscovery
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                multiCloudResourceDiscovery: MultiCloudResourceDiscovery? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.multiCloudResourceDiscovery = multiCloudResourceDiscovery
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetMultiCloudResourceDiscoveryResponse: CustomStringConvertible {
    public var description: String { "GetMultiCloudResourceDiscoveryResponse()" }
}