import Foundation

// MARK: - ChangeBatchContextCompartmentRequest

public struct ChangeBatchContextCompartmentRequest: Codable, Sendable {
    public var batchContextId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeBatchContextCompartmentDetails: ChangeBatchContextCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, ifMatch, opcRequestId, changeBatchContextCompartmentDetails
    }

    public init(
                batchContextId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeBatchContextCompartmentDetails: ChangeBatchContextCompartmentDetails? = nil
    ) {
        self.batchContextId = batchContextId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeBatchContextCompartmentDetails = changeBatchContextCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchContextCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeBatchContextCompartmentRequest()" }
}

// MARK: - ChangeBatchContextCompartmentResponse

public struct ChangeBatchContextCompartmentResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchContextCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeBatchContextCompartmentResponse()" }
}