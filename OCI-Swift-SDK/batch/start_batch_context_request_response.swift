import Foundation

// MARK: - StartBatchContextRequest

public struct StartBatchContextRequest: Codable, Sendable {
    public var batchContextId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var startBatchContextDetails: StartBatchContextDetails?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, ifMatch, opcRequestId, startBatchContextDetails
    }

    public init(
                batchContextId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                startBatchContextDetails: StartBatchContextDetails? = nil
    ) {
        self.batchContextId = batchContextId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.startBatchContextDetails = startBatchContextDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StartBatchContextRequest: CustomStringConvertible {
    public var description: String { "StartBatchContextRequest()" }
}

// MARK: - StartBatchContextResponse

public struct StartBatchContextResponse: Codable, Sendable {
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

extension StartBatchContextResponse: CustomStringConvertible {
    public var description: String { "StartBatchContextResponse()" }
}