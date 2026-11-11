import Foundation

// MARK: - GetWorkRequestRequest

public struct GetWorkRequestRequest: Codable, Sendable {
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

extension GetWorkRequestRequest: CustomStringConvertible {
    public var description: String { "GetWorkRequestRequest()" }
}

// MARK: - GetWorkRequestResponse

public struct GetWorkRequestResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var retryAfter: Float?
    public var workRequest: WorkRequest?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, retryAfter, workRequest
    }

    public init(
                opcRequestId: String? = nil,
                retryAfter: Float? = nil,
                workRequest: WorkRequest? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.retryAfter = retryAfter
        self.workRequest = workRequest
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetWorkRequestResponse: CustomStringConvertible {
    public var description: String { "GetWorkRequestResponse()" }
}