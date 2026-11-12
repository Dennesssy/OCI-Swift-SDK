import Foundation

// MARK: - MoveCompartmentRequest

public struct MoveCompartmentRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var moveCompartmentDetails: MoveCompartmentDetails?
    public var opcRetryToken: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, moveCompartmentDetails, opcRetryToken
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                moveCompartmentDetails: MoveCompartmentDetails? = nil,
                opcRetryToken: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.moveCompartmentDetails = moveCompartmentDetails
        self.opcRetryToken = opcRetryToken
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MoveCompartmentRequest: CustomStringConvertible {
    public var description: String { "MoveCompartmentRequest()" }
}

// MARK: - MoveCompartmentResponse

public struct MoveCompartmentResponse: Codable, Sendable {
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

extension MoveCompartmentResponse: CustomStringConvertible {
    public var description: String { "MoveCompartmentResponse()" }
}