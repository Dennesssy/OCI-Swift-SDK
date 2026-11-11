import Foundation

// MARK: - CreateDigitalTwinRelationshipRequest

public struct CreateDigitalTwinRelationshipRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDigitalTwinRelationshipDetails: CreateDigitalTwinRelationshipDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDigitalTwinRelationshipDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDigitalTwinRelationshipDetails: CreateDigitalTwinRelationshipDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDigitalTwinRelationshipDetails = createDigitalTwinRelationshipDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDigitalTwinRelationshipRequest: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinRelationshipRequest()" }
}

// MARK: - CreateDigitalTwinRelationshipResponse

public struct CreateDigitalTwinRelationshipResponse: Codable, Sendable {
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

extension CreateDigitalTwinRelationshipResponse: CustomStringConvertible {
    public var description: String { "CreateDigitalTwinRelationshipResponse()" }
}