import Foundation

// MARK: - DeleteTriggerRequest

public struct DeleteTriggerRequest: Codable, Sendable {
    public var triggerId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case triggerId, ifMatch, opcRequestId
    }

    public init(
                triggerId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.triggerId = triggerId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteTriggerRequest: CustomStringConvertible {
    public var description: String { "DeleteTriggerRequest()" }
}

// MARK: - DeleteTriggerResponse

public struct DeleteTriggerResponse: Codable, Sendable {
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

extension DeleteTriggerResponse: CustomStringConvertible {
    public var description: String { "DeleteTriggerResponse()" }
}