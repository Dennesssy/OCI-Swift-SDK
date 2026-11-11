import Foundation

// MARK: - RemoveSubscriberLockRequest

public struct RemoveSubscriberLockRequest: Codable, Sendable {
    public var subscriberId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var removeResourceLockDetails: RemoveResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, opcRequestId, ifMatch, removeResourceLockDetails
    }

    public init(
                subscriberId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                removeResourceLockDetails: RemoveResourceLockDetails? = nil
    ) {
        self.subscriberId = subscriberId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.removeResourceLockDetails = removeResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveSubscriberLockRequest: CustomStringConvertible {
    public var description: String { "RemoveSubscriberLockRequest()" }
}

// MARK: - RemoveSubscriberLockResponse

public struct RemoveSubscriberLockResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var subscriber: Subscriber?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, subscriber
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                subscriber: Subscriber? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.subscriber = subscriber
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveSubscriberLockResponse: CustomStringConvertible {
    public var description: String { "RemoveSubscriberLockResponse()" }
}