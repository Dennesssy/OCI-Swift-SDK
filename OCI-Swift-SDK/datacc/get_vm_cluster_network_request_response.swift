import Foundation

// MARK: - GetVmClusterNetworkRequest

public struct GetVmClusterNetworkRequest: Codable, Sendable {
    public var vmClusterNetworkId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case vmClusterNetworkId, opcRequestId
    }

    public init(
                vmClusterNetworkId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.vmClusterNetworkId = vmClusterNetworkId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "GetVmClusterNetworkRequest()" }
}

// MARK: - GetVmClusterNetworkResponse

public struct GetVmClusterNetworkResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var vmClusterNetwork: VmClusterNetwork?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, location, vmClusterNetwork
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                vmClusterNetwork: VmClusterNetwork? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.vmClusterNetwork = vmClusterNetwork
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "GetVmClusterNetworkResponse()" }
}