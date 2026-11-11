import Foundation

// MARK: - GetDigitalTwinRelationshipRequest

public struct GetDigitalTwinRelationshipRequest: Codable, Sendable {
    public var digitalTwinRelationshipId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinRelationshipId, opcRequestId
    }

    public init(
                digitalTwinRelationshipId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinRelationshipId = digitalTwinRelationshipId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinRelationshipRequest: CustomStringConvertible {
    public var description: String { "GetDigitalTwinRelationshipRequest()" }
}

// MARK: - GetDigitalTwinRelationshipResponse

public struct GetDigitalTwinRelationshipResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var digitalTwinRelationship: DigitalTwinRelationship?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, digitalTwinRelationship
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                digitalTwinRelationship: DigitalTwinRelationship? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.digitalTwinRelationship = digitalTwinRelationship
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDigitalTwinRelationshipResponse: CustomStringConvertible {
    public var description: String { "GetDigitalTwinRelationshipResponse()" }
}