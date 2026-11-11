import Foundation

// MARK: - UpdateDigitalTwinAdapterRequest

public struct UpdateDigitalTwinAdapterRequest: Codable, Sendable {
    public var digitalTwinAdapterId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDigitalTwinAdapterDetails: UpdateDigitalTwinAdapterDetails?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinAdapterId, ifMatch, opcRequestId, updateDigitalTwinAdapterDetails
    }

    public init(
                digitalTwinAdapterId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDigitalTwinAdapterDetails: UpdateDigitalTwinAdapterDetails? = nil
    ) {
        self.digitalTwinAdapterId = digitalTwinAdapterId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDigitalTwinAdapterDetails = updateDigitalTwinAdapterDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDigitalTwinAdapterRequest: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinAdapterRequest()" }
}

// MARK: - UpdateDigitalTwinAdapterResponse

public struct UpdateDigitalTwinAdapterResponse: Codable, Sendable {
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

extension UpdateDigitalTwinAdapterResponse: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinAdapterResponse()" }
}