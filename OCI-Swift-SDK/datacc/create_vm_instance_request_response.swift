import Foundation

// MARK: - CreateVmInstanceRequest

public struct CreateVmInstanceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createVmInstanceDetails: CreateVmInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createVmInstanceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createVmInstanceDetails: CreateVmInstanceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createVmInstanceDetails = createVmInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateVmInstanceRequest: CustomStringConvertible {
    public var description: String { "CreateVmInstanceRequest()" }
}

// MARK: - CreateVmInstanceResponse

public struct CreateVmInstanceResponse: Codable, Sendable {
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

extension CreateVmInstanceResponse: CustomStringConvertible {
    public var description: String { "CreateVmInstanceResponse()" }
}