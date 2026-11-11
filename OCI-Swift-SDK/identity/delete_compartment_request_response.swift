import Foundation

// MARK: - DeleteCompartmentRequest

public struct DeleteCompartmentRequest: Codable, Sendable {
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

extension DeleteCompartmentRequest: CustomStringConvertible {
    public var description: String { "DeleteCompartmentRequest()" }
}

// MARK: - DeleteCompartmentResponse

public struct DeleteCompartmentResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteCompartmentResponse: CustomStringConvertible {
    public var description: String { "DeleteCompartmentResponse()" }
}