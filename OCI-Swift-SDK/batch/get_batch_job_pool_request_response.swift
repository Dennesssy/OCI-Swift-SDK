import Foundation

// MARK: - GetBatchJobPoolRequest

public struct GetBatchJobPoolRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, opcRequestId
    }

    public init(
                batchJobPoolId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "GetBatchJobPoolRequest()" }
}

// MARK: - GetBatchJobPoolResponse

public struct GetBatchJobPoolResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var batchJobPool: BatchJobPool?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, batchJobPool
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                batchJobPool: BatchJobPool? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.batchJobPool = batchJobPool
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "GetBatchJobPoolResponse()" }
}