import Foundation

// MARK: - GetBatchContextRequest

public struct GetBatchContextRequest: Codable, Sendable {
    public var batchContextId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case batchContextId, opcRequestId
    }

    public init(
                batchContextId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.batchContextId = batchContextId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchContextRequest: CustomStringConvertible {
    public var description: String { "GetBatchContextRequest()" }
}

// MARK: - GetBatchContextResponse

public struct GetBatchContextResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var batchContext: BatchContext?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, batchContext
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                batchContext: BatchContext? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.batchContext = batchContext
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetBatchContextResponse: CustomStringConvertible {
    public var description: String { "GetBatchContextResponse()" }
}