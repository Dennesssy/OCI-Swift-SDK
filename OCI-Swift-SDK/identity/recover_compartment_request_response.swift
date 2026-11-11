import Foundation

// MARK: - RecoverCompartmentRequest

public struct RecoverCompartmentRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RecoverCompartmentRequest: CustomStringConvertible {
    public var description: String { "RecoverCompartmentRequest()" }
}

// MARK: - RecoverCompartmentResponse

public struct RecoverCompartmentResponse: Codable, Sendable {
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

extension RecoverCompartmentResponse: CustomStringConvertible {
    public var description: String { "RecoverCompartmentResponse()" }
}