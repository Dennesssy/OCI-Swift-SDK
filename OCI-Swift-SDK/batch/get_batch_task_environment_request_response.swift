import Foundation

// MARK: - GetBatchTaskEnvironmentRequest

public struct GetBatchTaskEnvironmentRequest: Codable, Sendable {
    public var batchTaskEnvironmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchTaskEnvironmentId, opcRequestId
    }

    public init(
                batchTaskEnvironmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchTaskEnvironmentRequest: CustomStringConvertible {
    public var description: String { "GetBatchTaskEnvironmentRequest()" }
}

// MARK: - GetBatchTaskEnvironmentResponse

public struct GetBatchTaskEnvironmentResponse: Codable, Sendable {
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

extension GetBatchTaskEnvironmentResponse: CustomStringConvertible {
    public var description: String { "GetBatchTaskEnvironmentResponse()" }
}