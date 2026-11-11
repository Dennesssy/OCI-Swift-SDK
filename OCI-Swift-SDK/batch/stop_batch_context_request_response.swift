import Foundation

// MARK: - StopBatchContextRequest

public struct StopBatchContextRequest: Codable, Sendable {
    public var batchContextId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var stopBatchContextDetails: StopBatchContextDetails?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, ifMatch, opcRequestId, stopBatchContextDetails
    }

    public init(
                batchContextId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                stopBatchContextDetails: StopBatchContextDetails? = nil
    ) {
        self.batchContextId = batchContextId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.stopBatchContextDetails = stopBatchContextDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StopBatchContextRequest: CustomStringConvertible {
    public var description: String { "StopBatchContextRequest()" }
}

// MARK: - StopBatchContextResponse

public struct StopBatchContextResponse: Codable, Sendable {
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

extension StopBatchContextResponse: CustomStringConvertible {
    public var description: String { "StopBatchContextResponse()" }
}