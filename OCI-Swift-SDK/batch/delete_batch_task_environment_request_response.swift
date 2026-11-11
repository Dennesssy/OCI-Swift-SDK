import Foundation

// MARK: - DeleteBatchTaskEnvironmentRequest

public struct DeleteBatchTaskEnvironmentRequest: Codable, Sendable {
    public var batchTaskEnvironmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchTaskEnvironmentId, ifMatch, opcRequestId
    }

    public init(
                batchTaskEnvironmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchTaskEnvironmentId = batchTaskEnvironmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchTaskEnvironmentRequest: CustomStringConvertible {
    public var description: String { "DeleteBatchTaskEnvironmentRequest()" }
}

// MARK: - DeleteBatchTaskEnvironmentResponse

public struct DeleteBatchTaskEnvironmentResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchTaskEnvironmentResponse: CustomStringConvertible {
    public var description: String { "DeleteBatchTaskEnvironmentResponse()" }
}