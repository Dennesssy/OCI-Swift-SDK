import Foundation

// MARK: - GetBatchJobRequest

public struct GetBatchJobRequest: Codable, Sendable {
    public var batchJobId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, opcRequestId
    }

    public init(
                batchJobId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobId = batchJobId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchJobRequest: CustomStringConvertible {
    public var description: String { "GetBatchJobRequest()" }
}

// MARK: - GetBatchJobResponse

public struct GetBatchJobResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var batchJob: BatchJob?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, batchJob
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                batchJob: BatchJob? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.batchJob = batchJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchJobResponse: CustomStringConvertible {
    public var description: String { "GetBatchJobResponse()" }
}