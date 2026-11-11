import Foundation

// MARK: - CreateVmClusterNetworkRequest

public struct CreateVmClusterNetworkRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createVmClusterNetworkDetails: CreateVmClusterNetworkDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createVmClusterNetworkDetails
    }

    public init(
                opcRequestId: String? = nil,
                createVmClusterNetworkDetails: CreateVmClusterNetworkDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createVmClusterNetworkDetails = createVmClusterNetworkDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "CreateVmClusterNetworkRequest()" }
}

// MARK: - CreateVmClusterNetworkResponse

public struct CreateVmClusterNetworkResponse: Codable, Sendable {
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

extension CreateVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "CreateVmClusterNetworkResponse()" }
}