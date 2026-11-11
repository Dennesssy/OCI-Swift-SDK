import Foundation

// MARK: - UpdateDigitalTwinInstanceRequest

public struct UpdateDigitalTwinInstanceRequest: Codable, Sendable {
    public var digitalTwinInstanceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDigitalTwinInstanceDetails: UpdateDigitalTwinInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinInstanceId, ifMatch, opcRequestId, updateDigitalTwinInstanceDetails
    }

    public init(
                digitalTwinInstanceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDigitalTwinInstanceDetails: UpdateDigitalTwinInstanceDetails? = nil
    ) {
        self.digitalTwinInstanceId = digitalTwinInstanceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDigitalTwinInstanceDetails = updateDigitalTwinInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDigitalTwinInstanceRequest: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinInstanceRequest()" }
}

// MARK: - UpdateDigitalTwinInstanceResponse

public struct UpdateDigitalTwinInstanceResponse: Codable, Sendable {
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

extension UpdateDigitalTwinInstanceResponse: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinInstanceResponse()" }
}