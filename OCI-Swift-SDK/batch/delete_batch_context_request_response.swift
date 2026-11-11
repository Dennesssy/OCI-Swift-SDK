import Foundation

// MARK: - DeleteBatchContextRequest

public struct DeleteBatchContextRequest: Codable, Sendable {
    public var batchContextId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, ifMatch, opcRequestId
    }

    public init(
                batchContextId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchContextId = batchContextId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteBatchContextRequest: CustomStringConvertible {
    public var description: String { "DeleteBatchContextRequest()" }
}

// MARK: - DeleteBatchContextResponse

public struct DeleteBatchContextResponse: Codable, Sendable {
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

extension DeleteBatchContextResponse: CustomStringConvertible {
    public var description: String { "DeleteBatchContextResponse()" }
}