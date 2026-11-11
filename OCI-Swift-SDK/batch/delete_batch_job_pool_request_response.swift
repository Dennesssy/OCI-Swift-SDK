import Foundation

// MARK: - DeleteBatchJobPoolRequest

public struct DeleteBatchJobPoolRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, ifMatch, opcRequestId
    }

    public init(
                batchJobPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "DeleteBatchJobPoolRequest()" }
}

// MARK: - DeleteBatchJobPoolResponse

public struct DeleteBatchJobPoolResponse: Codable, Sendable {
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

extension DeleteBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "DeleteBatchJobPoolResponse()" }
}