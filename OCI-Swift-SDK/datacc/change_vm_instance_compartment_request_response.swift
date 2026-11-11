import Foundation

// MARK: - ChangeVmInstanceCompartmentRequest

public struct ChangeVmInstanceCompartmentRequest: Codable, Sendable {
    public var vmInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeVmInstanceCompartmentDetails: ChangeVmInstanceCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case vmInstanceId, ifMatch, opcRequestId, changeVmInstanceCompartmentDetails
    }

    public init(
                vmInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeVmInstanceCompartmentDetails: ChangeVmInstanceCompartmentDetails? = nil
    ) {
        self.vmInstanceId = vmInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeVmInstanceCompartmentDetails = changeVmInstanceCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeVmInstanceCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeVmInstanceCompartmentRequest()" }
}

// MARK: - ChangeVmInstanceCompartmentResponse

public struct ChangeVmInstanceCompartmentResponse: Codable, Sendable {
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

extension ChangeVmInstanceCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeVmInstanceCompartmentResponse()" }
}