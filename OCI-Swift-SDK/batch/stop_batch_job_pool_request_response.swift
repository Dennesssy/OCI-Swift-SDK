import Foundation

// MARK: - StopBatchJobPoolRequest

public struct StopBatchJobPoolRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var stopBatchJobPoolDetails: StopBatchJobPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, ifMatch, opcRequestId, stopBatchJobPoolDetails
    }

    public init(
                batchJobPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                stopBatchJobPoolDetails: StopBatchJobPoolDetails? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.stopBatchJobPoolDetails = stopBatchJobPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "StopBatchJobPoolRequest()" }
}

// MARK: - StopBatchJobPoolResponse

public struct StopBatchJobPoolResponse: Codable, Sendable {
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

extension StopBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "StopBatchJobPoolResponse()" }
}