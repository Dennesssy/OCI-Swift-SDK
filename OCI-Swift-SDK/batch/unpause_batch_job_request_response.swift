import Foundation

// MARK: - UnpauseBatchJobRequest

public struct UnpauseBatchJobRequest: Codable, Sendable {
    public var batchJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var unpauseBatchJobDetails: UnpauseBatchJobDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, ifMatch, opcRequestId, unpauseBatchJobDetails
    }

    public init(
                batchJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                unpauseBatchJobDetails: UnpauseBatchJobDetails? = nil
    ) {
        self.batchJobId = batchJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.unpauseBatchJobDetails = unpauseBatchJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UnpauseBatchJobRequest: CustomStringConvertible {
    public var description: String { "UnpauseBatchJobRequest()" }
}

// MARK: - UnpauseBatchJobResponse

public struct UnpauseBatchJobResponse: Codable, Sendable {
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

extension UnpauseBatchJobResponse: CustomStringConvertible {
    public var description: String { "UnpauseBatchJobResponse()" }
}