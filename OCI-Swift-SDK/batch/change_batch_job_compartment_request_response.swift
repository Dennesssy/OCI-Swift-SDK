import Foundation

// MARK: - ChangeBatchJobCompartmentRequest

public struct ChangeBatchJobCompartmentRequest: Codable, Sendable {
    public var batchJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeBatchJobCompartmentDetails: ChangeBatchJobCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, ifMatch, opcRequestId, changeBatchJobCompartmentDetails
    }

    public init(
                batchJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeBatchJobCompartmentDetails: ChangeBatchJobCompartmentDetails? = nil
    ) {
        self.batchJobId = batchJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeBatchJobCompartmentDetails = changeBatchJobCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchJobCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeBatchJobCompartmentRequest()" }
}

// MARK: - ChangeBatchJobCompartmentResponse

public struct ChangeBatchJobCompartmentResponse: Codable, Sendable {
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

extension ChangeBatchJobCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeBatchJobCompartmentResponse()" }
}