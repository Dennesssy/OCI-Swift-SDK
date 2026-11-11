import Foundation

// MARK: - GetCompartmentRequest

public struct GetCompartmentRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetCompartmentRequest: CustomStringConvertible {
    public var description: String { "GetCompartmentRequest()" }
}

// MARK: - GetCompartmentResponse

public struct GetCompartmentResponse: Codable, Sendable {
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

extension GetCompartmentResponse: CustomStringConvertible {
    public var description: String { "GetCompartmentResponse()" }
}