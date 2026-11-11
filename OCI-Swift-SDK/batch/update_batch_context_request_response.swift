import Foundation

// MARK: - UpdateBatchContextRequest

public struct UpdateBatchContextRequest: Codable, Sendable {
    public var batchContextId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateBatchContextDetails: UpdateBatchContextDetails?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, ifMatch, opcRequestId, updateBatchContextDetails
    }

    public init(
                batchContextId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateBatchContextDetails: UpdateBatchContextDetails? = nil
    ) {
        self.batchContextId = batchContextId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateBatchContextDetails = updateBatchContextDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateBatchContextRequest: CustomStringConvertible {
    public var description: String { "UpdateBatchContextRequest()" }
}

// MARK: - UpdateBatchContextResponse

public struct UpdateBatchContextResponse: Codable, Sendable {
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

extension UpdateBatchContextResponse: CustomStringConvertible {
    public var description: String { "UpdateBatchContextResponse()" }
}