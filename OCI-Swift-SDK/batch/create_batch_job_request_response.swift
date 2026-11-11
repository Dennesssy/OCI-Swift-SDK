import Foundation

// MARK: - CreateBatchJobRequest

public struct CreateBatchJobRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBatchJobDetails: CreateBatchJobDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBatchJobDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBatchJobDetails: CreateBatchJobDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBatchJobDetails = createBatchJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchJobRequest: CustomStringConvertible {
    public var description: String { "CreateBatchJobRequest()" }
}

// MARK: - CreateBatchJobResponse

public struct CreateBatchJobResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var batchJob: BatchJob?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, batchJob
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                batchJob: BatchJob? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.batchJob = batchJob
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchJobResponse: CustomStringConvertible {
    public var description: String { "CreateBatchJobResponse()" }
}