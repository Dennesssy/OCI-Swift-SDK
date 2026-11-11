import Foundation

// MARK: - UpdateCompartmentRequest

public struct UpdateCompartmentRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateCompartmentDetails: UpdateCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, updateCompartmentDetails
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateCompartmentDetails: UpdateCompartmentDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateCompartmentDetails = updateCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCompartmentRequest: CustomStringConvertible {
    public var description: String { "UpdateCompartmentRequest()" }
}

// MARK: - UpdateCompartmentResponse

public struct UpdateCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var compartment: Compartment?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, compartment
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                compartment: Compartment? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.compartment = compartment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateCompartmentResponse: CustomStringConvertible {
    public var description: String { "UpdateCompartmentResponse()" }
}