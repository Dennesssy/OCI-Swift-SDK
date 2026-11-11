import Foundation

// MARK: - UpdateBatchJobPoolRequest

public struct UpdateBatchJobPoolRequest: Codable, Sendable {
    public var batchJobPoolId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBatchJobPoolDetails: UpdateBatchJobPoolDetails?

    private enum CodingKeys: String, CodingKey {
        case batchJobPoolId, ifMatch, opcRequestId, updateBatchJobPoolDetails
    }

    public init(
                batchJobPoolId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBatchJobPoolDetails: UpdateBatchJobPoolDetails? = nil
    ) {
        self.batchJobPoolId = batchJobPoolId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBatchJobPoolDetails = updateBatchJobPoolDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchJobPoolRequest: CustomStringConvertible {
    public var description: String { "UpdateBatchJobPoolRequest()" }
}

// MARK: - UpdateBatchJobPoolResponse

public struct UpdateBatchJobPoolResponse: Codable, Sendable {
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

extension UpdateBatchJobPoolResponse: CustomStringConvertible {
    public var description: String { "UpdateBatchJobPoolResponse()" }
}