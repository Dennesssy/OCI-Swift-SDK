import Foundation

// MARK: - DeleteDigitalTwinRelationshipRequest

public struct DeleteDigitalTwinRelationshipRequest: Codable, Sendable {
    public var digitalTwinRelationshipId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case digitalTwinRelationshipId, ifMatch, opcRequestId
    }

    public init(
                digitalTwinRelationshipId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.digitalTwinRelationshipId = digitalTwinRelationshipId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinRelationshipRequest: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinRelationshipRequest()" }
}

// MARK: - DeleteDigitalTwinRelationshipResponse

public struct DeleteDigitalTwinRelationshipResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDigitalTwinRelationshipResponse: CustomStringConvertible {
    public var description: String { "DeleteDigitalTwinRelationshipResponse()" }
}