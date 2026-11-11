import Foundation

// MARK: - PauseBatchJobRequest

public struct PauseBatchJobRequest: Codable, Sendable {
    public var batchJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var pauseBatchJobDetails: PauseBatchJobDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, ifMatch, opcRequestId, pauseBatchJobDetails
    }

    public init(
                batchJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                pauseBatchJobDetails: PauseBatchJobDetails? = nil
    ) {
        self.batchJobId = batchJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.pauseBatchJobDetails = pauseBatchJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PauseBatchJobRequest: CustomStringConvertible {
    public var description: String { "PauseBatchJobRequest()" }
}

// MARK: - PauseBatchJobResponse

public struct PauseBatchJobResponse: Codable, Sendable {
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

extension PauseBatchJobResponse: CustomStringConvertible {
    public var description: String { "PauseBatchJobResponse()" }
}