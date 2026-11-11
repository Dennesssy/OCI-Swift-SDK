import Foundation

// MARK: - CreateBatchTaskEnvironmentRequest

public struct CreateBatchTaskEnvironmentRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createBatchTaskEnvironmentDetails: CreateBatchTaskEnvironmentDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createBatchTaskEnvironmentDetails
    }

    public init(
                opcRequestId: String? = nil,
                createBatchTaskEnvironmentDetails: CreateBatchTaskEnvironmentDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createBatchTaskEnvironmentDetails = createBatchTaskEnvironmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateBatchTaskEnvironmentRequest: CustomStringConvertible {
    public var description: String { "CreateBatchTaskEnvironmentRequest()" }
}

// MARK: - CreateBatchTaskEnvironmentResponse

public struct CreateBatchTaskEnvironmentResponse: Codable, Sendable {
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

extension CreateBatchTaskEnvironmentResponse: CustomStringConvertible {
    public var description: String { "CreateBatchTaskEnvironmentResponse()" }
}