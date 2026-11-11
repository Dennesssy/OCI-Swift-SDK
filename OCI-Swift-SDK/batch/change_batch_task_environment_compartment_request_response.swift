import Foundation

// MARK: - ChangeBatchTaskEnvironmentCompartmentRequest

public struct ChangeBatchTaskEnvironmentCompartmentRequest: Codable, Sendable {
    public var batchTaskEnvironmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var changeBatchTaskEnvironmentCompartmentDetails: ChangeBatchTaskEnvironmentCompartmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchTaskEnvironmentId, ifMatch, opcRequestId, changeBatchTaskEnvironmentCompartmentDetails
    }

    public init(
                batchTaskEnvironmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                changeBatchTaskEnvironmentCompartmentDetails: ChangeBatchTaskEnvironmentCompartmentDetails? = nil
    ) {
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.changeBatchTaskEnvironmentCompartmentDetails = changeBatchTaskEnvironmentCompartmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ChangeBatchTaskEnvironmentCompartmentRequest: CustomStringConvertible {
    public var description: String { "ChangeBatchTaskEnvironmentCompartmentRequest()" }
}

// MARK: - ChangeBatchTaskEnvironmentCompartmentResponse

public struct ChangeBatchTaskEnvironmentCompartmentResponse: Codable, Sendable {
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

extension ChangeBatchTaskEnvironmentCompartmentResponse: CustomStringConvertible {
    public var description: String { "ChangeBatchTaskEnvironmentCompartmentResponse()" }
}