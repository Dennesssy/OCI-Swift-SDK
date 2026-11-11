import Foundation

// MARK: - ValidateVmClusterNetworkRequest

public struct ValidateVmClusterNetworkRequest: Codable, Sendable {
    public var vmClusterNetworkId: String?
    public var opcRequestId: String?
    public var ifMatch: String?

    private enum CodingKeys: String, CodingKey {
        case vmClusterNetworkId, opcRequestId, ifMatch
    }

    public init(
                vmClusterNetworkId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil
    ) {
        self.vmClusterNetworkId = vmClusterNetworkId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateVmClusterNetworkRequest: CustomStringConvertible {
    public var description: String { "ValidateVmClusterNetworkRequest()" }
}

// MARK: - ValidateVmClusterNetworkResponse

public struct ValidateVmClusterNetworkResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ValidateVmClusterNetworkResponse: CustomStringConvertible {
    public var description: String { "ValidateVmClusterNetworkResponse()" }
}