import Foundation

// MARK: - UpdateVmInstanceRequest

public struct UpdateVmInstanceRequest: Codable, Sendable {
    public var vmInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateVmInstanceDetails: UpdateVmInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case vmInstanceId, ifMatch, opcRequestId, updateVmInstanceDetails
    }

    public init(
                vmInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateVmInstanceDetails: UpdateVmInstanceDetails? = nil
    ) {
        self.vmInstanceId = vmInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateVmInstanceDetails = updateVmInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateVmInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateVmInstanceRequest()" }
}

// MARK: - UpdateVmInstanceResponse

public struct UpdateVmInstanceResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var vmInstance: VmInstance?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId, etag, location, vmInstance
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                vmInstance: VmInstance? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.vmInstance = vmInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateVmInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateVmInstanceResponse()" }
}