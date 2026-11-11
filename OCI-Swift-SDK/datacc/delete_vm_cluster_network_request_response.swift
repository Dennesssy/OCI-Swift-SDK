import Foundation

// MARK: - DeleteVmClusterNetworkRequest

public struct DeleteVmClusterNetworkRequest: Codable, Sendable {
    public var vmClusterNetworkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case vmClusterNetworkId, ifMatch, opcRequestId
    }

    public init(
                vmClusterNetworkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.vmClusterNetworkId = vmClusterNetworkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "DeleteVmClusterNetworkRequest()" }
}

// MARK: - DeleteVmClusterNetworkResponse

public struct DeleteVmClusterNetworkResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "DeleteVmClusterNetworkResponse()" }
}