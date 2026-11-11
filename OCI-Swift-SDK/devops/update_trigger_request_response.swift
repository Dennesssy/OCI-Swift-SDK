import Foundation
import OCICommon

// MARK: - UpdateTriggerRequest

public struct UpdateTriggerRequest: Codable, Sendable {
    public var triggerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateTriggerDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case triggerId, ifMatch, opcRequestId, updateTriggerDetails
    }

    public init(
                triggerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateTriggerDetails: JSONValue? = nil
    ) {
        self.triggerId = triggerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateTriggerDetails = updateTriggerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTriggerRequest: CustomStringConvertible {
    public var description: String { "UpdateTriggerRequest()" }
}

// MARK: - UpdateTriggerResponse

public struct UpdateTriggerResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var trigger: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, trigger
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                trigger: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.trigger = trigger
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateTriggerResponse: CustomStringConvertible {
    public var description: String { "UpdateTriggerResponse()" }
}