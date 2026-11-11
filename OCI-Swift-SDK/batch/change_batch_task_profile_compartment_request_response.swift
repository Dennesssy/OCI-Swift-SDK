import Foundation

// MARK: - ChangeBatchTaskProfileCompartmentRequest

public struct ChangeBatchTaskProfileCompartmentRequest: Codable, Sendable {
    public var batchTaskProfileId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeBatchTaskProfileCompartmentDetails: ChangeBatchTaskProfileCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchTaskProfileId, ifMatch, opcRequestId, changeBatchTaskProfileCompartmentDetails
    }

    public init(
                batchTaskProfileId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeBatchTaskProfileCompartmentDetails: ChangeBatchTaskProfileCompartmentDetails? = nil
    ) {
        self.batchTaskProfileId = batchTaskProfileId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeBatchTaskProfileCompartmentDetails = changeBatchTaskProfileCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchTaskProfileCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeBatchTaskProfileCompartmentRequest()" }
}

// MARK: - ChangeBatchTaskProfileCompartmentResponse

public struct ChangeBatchTaskProfileCompartmentResponse: Codable, Sendable {
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

extension ChangeBatchTaskProfileCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeBatchTaskProfileCompartmentResponse()" }
}