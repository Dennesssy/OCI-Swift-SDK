import Foundation

// MARK: - GetVmInstanceRequest

public struct GetVmInstanceRequest: Codable, Sendable {
    public var vmInstanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case vmInstanceId, opcRequestId
    }

    public init(
                vmInstanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.vmInstanceId = vmInstanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetVmInstanceRequest: CustomStringConvertible {
    public var description: String { "GetVmInstanceRequest()" }
}

// MARK: - GetVmInstanceResponse

public struct GetVmInstanceResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var location: String?
    public var vmInstance: VmInstance?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, location, vmInstance
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                location: String? = nil,
                vmInstance: VmInstance? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.location = location
        self.vmInstance = vmInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetVmInstanceResponse: CustomStringConvertible {
    public var description: String { "GetVmInstanceResponse()" }
}