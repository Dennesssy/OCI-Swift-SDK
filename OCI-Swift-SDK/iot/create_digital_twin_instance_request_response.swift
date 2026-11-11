import Foundation

// MARK: - CreateDigitalTwinInstanceRequest

public struct CreateDigitalTwinInstanceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDigitalTwinInstanceDetails: CreateDigitalTwinInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDigitalTwinInstanceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDigitalTwinInstanceDetails: CreateDigitalTwinInstanceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDigitalTwinInstanceDetails = createDigitalTwinInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDigitalTwinInstanceRequest: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinInstanceRequest()" }
}

// MARK: - CreateDigitalTwinInstanceResponse

public struct CreateDigitalTwinInstanceResponse: Codable, Sendable {
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

extension CreateDigitalTwinInstanceResponse: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinInstanceResponse()" }
}