import Foundation

// MARK: - CancelBatchJobRequest

public struct CancelBatchJobRequest: Codable, Sendable {
    public var batchJobId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchJobId, ifMatch, opcRequestId
    }

    public init(
                batchJobId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchJobId = batchJobId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CancelBatchJobRequest: CustomStringConvertible {
    public var description: String { "CancelBatchJobRequest()" }
}

// MARK: - CancelBatchJobResponse

public struct CancelBatchJobResponse: Codable, Sendable {
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

extension CancelBatchJobResponse: CustomStringConvertible {
    public var description: String { "CancelBatchJobResponse()" }
}