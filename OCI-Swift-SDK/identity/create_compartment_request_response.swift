import Foundation

// MARK: - CreateCompartmentRequest

public struct CreateCompartmentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createCompartmentDetails: CreateCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createCompartmentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createCompartmentDetails: CreateCompartmentDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createCompartmentDetails = createCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCompartmentRequest: CustomStringConvertible {
    public var description: String { "CreateCompartmentRequest()" }
}

// MARK: - CreateCompartmentResponse

public struct CreateCompartmentResponse: Codable, Sendable {
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

extension CreateCompartmentResponse: CustomStringConvertible {
    public var description: String { "CreateCompartmentResponse()" }
}