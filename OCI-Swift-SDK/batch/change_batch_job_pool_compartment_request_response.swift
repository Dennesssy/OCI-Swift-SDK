import Foundation

// MARK: - ChangeBatchJobPoolCompartmentRequest

public struct ChangeBatchJobPoolCompartmentRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeBatchJobPoolCompartmentDetails: ChangeBatchJobPoolCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, ifMatch, opcRequestId, changeBatchJobPoolCompartmentDetails
    }

    public init(
                batchJobPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeBatchJobPoolCompartmentDetails: ChangeBatchJobPoolCompartmentDetails? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeBatchJobPoolCompartmentDetails = changeBatchJobPoolCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchJobPoolCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeBatchJobPoolCompartmentRequest()" }
}

// MARK: - ChangeBatchJobPoolCompartmentResponse

public struct ChangeBatchJobPoolCompartmentResponse: Codable, Sendable {
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

extension ChangeBatchJobPoolCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeBatchJobPoolCompartmentResponse()" }
}