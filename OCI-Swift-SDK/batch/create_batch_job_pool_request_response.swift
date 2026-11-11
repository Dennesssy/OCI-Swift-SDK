import Foundation

// MARK: - CreateBatchJobPoolRequest

public struct CreateBatchJobPoolRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBatchJobPoolDetails: CreateBatchJobPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBatchJobPoolDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBatchJobPoolDetails: CreateBatchJobPoolDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBatchJobPoolDetails = createBatchJobPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "CreateBatchJobPoolRequest()" }
}

// MARK: - CreateBatchJobPoolResponse

public struct CreateBatchJobPoolResponse: Codable, Sendable {
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

extension CreateBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "CreateBatchJobPoolResponse()" }
}