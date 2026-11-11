import Foundation

// MARK: - GetInstanceRequest

public struct GetInstanceRequest: Codable, Sendable {
    public var instanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case instanceId, opcRequestId
    }

    public init(
                instanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.instanceId = instanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInstanceRequest: CustomStringConvertible {
    public var description: String { "GetInstanceRequest()" }
}

// MARK: - GetInstanceResponse

public struct GetInstanceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var instance: Instance?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, instance
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                instance: Instance? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.instance = instance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInstanceResponse: CustomStringConvertible {
    public var description: String { "GetInstanceResponse()" }
}