import Foundation

// MARK: - GetDigitalTwinAdapterRequest

public struct GetDigitalTwinAdapterRequest: Codable, Sendable {
    public var digitalTwinAdapterId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinAdapterId, opcRequestId
    }

    public init(
                digitalTwinAdapterId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinAdapterId = digitalTwinAdapterId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinAdapterRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinAdapterRequest()" }
}

// MARK: - GetDigitalTwinAdapterResponse

public struct GetDigitalTwinAdapterResponse: Codable, Sendable {
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

extension GetDigitalTwinAdapterResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinAdapterResponse()" }
}