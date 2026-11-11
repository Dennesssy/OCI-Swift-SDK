import Foundation

// MARK: - UpdateDigitalTwinRelationshipRequest

public struct UpdateDigitalTwinRelationshipRequest: Codable, Sendable {
    public var digitalTwinRelationshipId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDigitalTwinRelationshipDetails: UpdateDigitalTwinRelationshipDetails?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinRelationshipId, ifMatch, opcRequestId, updateDigitalTwinRelationshipDetails
    }

    public init(
                digitalTwinRelationshipId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDigitalTwinRelationshipDetails: UpdateDigitalTwinRelationshipDetails? = nil
    ) {
        self.digitalTwinRelationshipId = digitalTwinRelationshipId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDigitalTwinRelationshipDetails = updateDigitalTwinRelationshipDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDigitalTwinRelationshipRequest: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinRelationshipRequest()" }
}

// MARK: - UpdateDigitalTwinRelationshipResponse

public struct UpdateDigitalTwinRelationshipResponse: Codable, Sendable {
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

extension UpdateDigitalTwinRelationshipResponse: CustomStringConvertible {
    public var description: String { "UpdateDigitalTwinRelationshipResponse()" }
}