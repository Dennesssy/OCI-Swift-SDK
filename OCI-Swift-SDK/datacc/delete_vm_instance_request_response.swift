import Foundation

// MARK: - DeleteVmInstanceRequest

public struct DeleteVmInstanceRequest: Codable, Sendable {
    public var vmInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case vmInstanceId, ifMatch, opcRequestId
    }

    public init(
                vmInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.vmInstanceId = vmInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteVmInstanceRequest: CustomStringConvertible {
    public var description: String { "DeleteVmInstanceRequest()" }
}

// MARK: - DeleteVmInstanceResponse

public struct DeleteVmInstanceResponse: Codable, Sendable {
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

extension DeleteVmInstanceResponse: CustomStringConvertible {
    public var description: String { "DeleteVmInstanceResponse()" }
}