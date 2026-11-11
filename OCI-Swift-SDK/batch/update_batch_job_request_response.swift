import Foundation

// MARK: - UpdateBatchJobRequest

public struct UpdateBatchJobRequest: Codable, Sendable {
    public var batchJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBatchJobDetails: UpdateBatchJobDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, ifMatch, opcRequestId, updateBatchJobDetails
    }

    public init(
                batchJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBatchJobDetails: UpdateBatchJobDetails? = nil
    ) {
        self.batchJobId = batchJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBatchJobDetails = updateBatchJobDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchJobRequest: CustomStringConvertible {
    public var description: String { "UpdateBatchJobRequest()" }
}

// MARK: - UpdateBatchJobResponse

public struct UpdateBatchJobResponse: Codable, Sendable {
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

extension UpdateBatchJobResponse: CustomStringConvertible {
    public var description: String { "UpdateBatchJobResponse()" }
}