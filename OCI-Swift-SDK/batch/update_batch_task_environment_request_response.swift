import Foundation

// MARK: - UpdateBatchTaskEnvironmentRequest

public struct UpdateBatchTaskEnvironmentRequest: Codable, Sendable {
    public var batchTaskEnvironmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBatchTaskEnvironmentDetails: UpdateBatchTaskEnvironmentDetails?

    private enum CodingKeys: String, CodingKey {
        case batchTaskEnvironmentId, ifMatch, opcRequestId, updateBatchTaskEnvironmentDetails
    }

    public init(
                batchTaskEnvironmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBatchTaskEnvironmentDetails: UpdateBatchTaskEnvironmentDetails? = nil
    ) {
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBatchTaskEnvironmentDetails = updateBatchTaskEnvironmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchTaskEnvironmentRequest: CustomStringConvertible {
    public var description: String { "UpdateBatchTaskEnvironmentRequest()" }
}

// MARK: - UpdateBatchTaskEnvironmentResponse

public struct UpdateBatchTaskEnvironmentResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var batchTaskEnvironment: BatchTaskEnvironment?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, batchTaskEnvironment
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                batchTaskEnvironment: BatchTaskEnvironment? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.batchTaskEnvironment = batchTaskEnvironment
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchTaskEnvironmentResponse: CustomStringConvertible {
    public var description: String { "UpdateBatchTaskEnvironmentResponse()" }
}