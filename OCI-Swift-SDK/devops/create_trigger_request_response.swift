import Foundation
import OCICommon

// MARK: - CreateTriggerRequest

public struct CreateTriggerRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createTriggerDetails: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createTriggerDetails
    }

    public init(
                opcRequestId: String? = nil,
                createTriggerDetails: JSONValue? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createTriggerDetails = createTriggerDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTriggerRequest: CustomStringConvertible {
    public var description: String { "CreateTriggerRequest()" }
}

// MARK: - CreateTriggerResponse

public struct CreateTriggerResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var triggerCreateResult: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, triggerCreateResult
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                triggerCreateResult: JSONValue? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.triggerCreateResult = triggerCreateResult
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTriggerResponse: CustomStringConvertible {
    public var description: String { "CreateTriggerResponse()" }
}