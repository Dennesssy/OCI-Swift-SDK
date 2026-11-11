import Foundation

// MARK: - ChangeVmClusterNetworkCompartmentRequest

public struct ChangeVmClusterNetworkCompartmentRequest: Codable, Sendable {
    public var vmClusterNetworkId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeVmClusterNetworkCompartmentDetails: ChangeVmClusterNetworkCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case vmClusterNetworkId, ifMatch, opcRequestId, changeVmClusterNetworkCompartmentDetails
    }

    public init(
                vmClusterNetworkId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeVmClusterNetworkCompartmentDetails: ChangeVmClusterNetworkCompartmentDetails? = nil
    ) {
        self.vmClusterNetworkId = vmClusterNetworkId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeVmClusterNetworkCompartmentDetails = changeVmClusterNetworkCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeVmClusterNetworkCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeVmClusterNetworkCompartmentRequest()" }
}

// MARK: - ChangeVmClusterNetworkCompartmentResponse

public struct ChangeVmClusterNetworkCompartmentResponse: Codable, Sendable {
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

extension ChangeVmClusterNetworkCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeVmClusterNetworkCompartmentResponse()" }
}