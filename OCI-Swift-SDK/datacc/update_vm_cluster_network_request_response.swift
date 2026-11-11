import Foundation

// MARK: - UpdateVmClusterNetworkRequest

public struct UpdateVmClusterNetworkRequest: Codable, Sendable {
    public var vmClusterNetworkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateVmClusterNetworkDetails: UpdateVmClusterNetworkDetails?

    private enum CodingKeys: String, CodingKey {
        case vmClusterNetworkId, ifMatch, opcRequestId, updateVmClusterNetworkDetails
    }

    public init(
                vmClusterNetworkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateVmClusterNetworkDetails: UpdateVmClusterNetworkDetails? = nil
    ) {
        self.vmClusterNetworkId = vmClusterNetworkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateVmClusterNetworkDetails = updateVmClusterNetworkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "UpdateVmClusterNetworkRequest()" }
}

// MARK: - UpdateVmClusterNetworkResponse

public struct UpdateVmClusterNetworkResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var vmClusterNetwork: VmClusterNetwork?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, location, vmClusterNetwork
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                vmClusterNetwork: VmClusterNetwork? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.vmClusterNetwork = vmClusterNetwork
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "UpdateVmClusterNetworkResponse()" }
}