import Foundation

// MARK: - GetTaggingWorkRequestRequest

public struct GetTaggingWorkRequestRequest: Codable, Sendable {
    public var workRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case workRequestId, opcRequestId
    }

    public init(
                workRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.workRequestId = workRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTaggingWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetTaggingWorkRequestRequest()" }
}

// MARK: - GetTaggingWorkRequestResponse

public struct GetTaggingWorkRequestResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var retryAfter: Float?
    public var taggingWorkRequest: TaggingWorkRequest?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, retryAfter, taggingWorkRequest
    }

    public init(
                opcRequestId: String? = nil,
                retryAfter: Float? = nil,
                taggingWorkRequest: TaggingWorkRequest? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.taggingWorkRequest = taggingWorkRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTaggingWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetTaggingWorkRequestResponse()" }
}