import Foundation
import OCICommon

// MARK: - GetTriggerRequest

public struct GetTriggerRequest: Codable, Sendable {
    public var triggerId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case triggerId, opcRequestId
    }

    public init(
                triggerId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.triggerId = triggerId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTriggerRequest: CustomStringConvertible {
    public var description: String { "GetTriggerRequest()" }
}

// MARK: - GetTriggerResponse

public struct GetTriggerResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var trigger: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, trigger
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                trigger: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.trigger = trigger
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetTriggerResponse: CustomStringConvertible {
    public var description: String { "GetTriggerResponse()" }
}