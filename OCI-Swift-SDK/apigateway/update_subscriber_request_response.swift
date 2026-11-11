import Foundation

// MARK: - UpdateSubscriberRequest

public struct UpdateSubscriberRequest: Codable, Sendable {
    public var subscriberId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var isLockOverride: Bool?
    public var updateSubscriberDetails: UpdateSubscriberDetails?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, ifMatch, opcRequestId, isLockOverride, updateSubscriberDetails
    }

    public init(
                subscriberId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                isLockOverride: Bool? = nil,
                updateSubscriberDetails: UpdateSubscriberDetails? = nil
    ) {
        self.subscriberId = subscriberId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.isLockOverride = isLockOverride
        self.updateSubscriberDetails = updateSubscriberDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSubscriberRequest: CustomStringConvertible {
    public var description: String { "UpdateSubscriberRequest()" }
}

// MARK: - UpdateSubscriberResponse

public struct UpdateSubscriberResponse: Codable, Sendable {
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

extension UpdateSubscriberResponse: CustomStringConvertible {
    public var description: String { "UpdateSubscriberResponse()" }
}