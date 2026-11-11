import Foundation

// MARK: - StopVmInstanceRequest

public struct StopVmInstanceRequest: Codable, Sendable {
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

extension StopVmInstanceRequest: CustomStringConvertible {
    public var description: String { "StopVmInstanceRequest()" }
}

// MARK: - StopVmInstanceResponse

public struct StopVmInstanceResponse: Codable, Sendable {
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

extension StopVmInstanceResponse: CustomStringConvertible {
    public var description: String { "StopVmInstanceResponse()" }
}