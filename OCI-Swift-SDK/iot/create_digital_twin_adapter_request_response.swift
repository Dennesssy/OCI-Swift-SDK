import Foundation

// MARK: - CreateDigitalTwinAdapterRequest

public struct CreateDigitalTwinAdapterRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDigitalTwinAdapterDetails: CreateDigitalTwinAdapterDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDigitalTwinAdapterDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDigitalTwinAdapterDetails: CreateDigitalTwinAdapterDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDigitalTwinAdapterDetails = createDigitalTwinAdapterDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDigitalTwinAdapterRequest: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinAdapterRequest()" }
}

// MARK: - CreateDigitalTwinAdapterResponse

public struct CreateDigitalTwinAdapterResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var digitalTwinAdapter: DigitalTwinAdapter?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, digitalTwinAdapter
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                digitalTwinAdapter: DigitalTwinAdapter? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.digitalTwinAdapter = digitalTwinAdapter
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDigitalTwinAdapterResponse: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinAdapterResponse()" }
}