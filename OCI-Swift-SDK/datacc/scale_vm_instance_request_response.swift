import Foundation

// MARK: - ScaleVmInstanceRequest

public struct ScaleVmInstanceRequest: Codable, Sendable {
    public var vmInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var scaleVmInstanceDetails: ScaleVmInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case vmInstanceId, ifMatch, opcRequestId, scaleVmInstanceDetails
    }

    public init(
                vmInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                scaleVmInstanceDetails: ScaleVmInstanceDetails? = nil
    ) {
        self.vmInstanceId = vmInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.scaleVmInstanceDetails = scaleVmInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScaleVmInstanceRequest: CustomStringConvertible {
    public var description: String { "ScaleVmInstanceRequest()" }
}

// MARK: - ScaleVmInstanceResponse

public struct ScaleVmInstanceResponse: Codable, Sendable {
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

extension ScaleVmInstanceResponse: CustomStringConvertible {
    public var description: String { "ScaleVmInstanceResponse()" }
}