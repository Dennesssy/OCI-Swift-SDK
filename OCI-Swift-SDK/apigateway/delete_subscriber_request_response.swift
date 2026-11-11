import Foundation

// MARK: - DeleteSubscriberRequest

public struct DeleteSubscriberRequest: Codable, Sendable {
    public var subscriberId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, ifMatch, opcRequestId, isLockOverride
    }

    public init(
                subscriberId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil
    ) {
        self.subscriberId = subscriberId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteSubscriberRequest: CustomStringConvertible {
    public var description: String { "DeleteSubscriberRequest()" }
}

// MARK: - DeleteSubscriberResponse

public struct DeleteSubscriberResponse: Codable, Sendable {
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

extension DeleteSubscriberResponse: CustomStringConvertible {
    public var description: String { "DeleteSubscriberResponse()" }
}