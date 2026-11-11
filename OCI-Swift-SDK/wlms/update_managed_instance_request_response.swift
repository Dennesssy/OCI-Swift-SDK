import Foundation

// MARK: - UpdateManagedInstanceRequest

public struct UpdateManagedInstanceRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateManagedInstanceDetails: UpdateManagedInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, opcRequestId, ifMatch, updateManagedInstanceDetails
    }

    public init(
                managedInstanceId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateManagedInstanceDetails: UpdateManagedInstanceDetails? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateManagedInstanceDetails = updateManagedInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateManagedInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateManagedInstanceRequest()" }
}

// MARK: - UpdateManagedInstanceResponse

public struct UpdateManagedInstanceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var managedInstance: ManagedInstance?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, managedInstance
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                managedInstance: ManagedInstance? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.managedInstance = managedInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateManagedInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateManagedInstanceResponse()" }
}