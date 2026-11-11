import Foundation

// MARK: - GetManagedInstanceRequest

public struct GetManagedInstanceRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, opcRequestId
    }

    public init(
                managedInstanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetManagedInstanceRequest: CustomStringConvertible {
    public var description: String { "GetManagedInstanceRequest()" }
}

// MARK: - GetManagedInstanceResponse

public struct GetManagedInstanceResponse: Codable, Sendable {
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

extension GetManagedInstanceResponse: CustomStringConvertible {
    public var description: String { "GetManagedInstanceResponse()" }
}