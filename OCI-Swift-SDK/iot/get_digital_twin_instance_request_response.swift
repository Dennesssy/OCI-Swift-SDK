import Foundation

// MARK: - GetDigitalTwinInstanceRequest

public struct GetDigitalTwinInstanceRequest: Codable, Sendable {
    public var digitalTwinInstanceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinInstanceId, opcRequestId
    }

    public init(
                digitalTwinInstanceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinInstanceId = digitalTwinInstanceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinInstanceRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinInstanceRequest()" }
}

// MARK: - GetDigitalTwinInstanceResponse

public struct GetDigitalTwinInstanceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var digitalTwinInstance: DigitalTwinInstance?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, digitalTwinInstance
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                digitalTwinInstance: DigitalTwinInstance? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.digitalTwinInstance = digitalTwinInstance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinInstanceResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinInstanceResponse()" }
}