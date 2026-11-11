import Foundation

// MARK: - AddSubscriberLockRequest

public struct AddSubscriberLockRequest: Codable, Sendable {
    public var subscriberId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var addResourceLockDetails: AddResourceLockDetails?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, opcRequestId, ifMatch, addResourceLockDetails
    }

    public init(
                subscriberId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                addResourceLockDetails: AddResourceLockDetails? = nil
    ) {
        self.subscriberId = subscriberId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.addResourceLockDetails = addResourceLockDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AddSubscriberLockRequest: CustomStringConvertible {
    public var description: String { "AddSubscriberLockRequest()" }
}

// MARK: - AddSubscriberLockResponse

public struct AddSubscriberLockResponse: Codable, Sendable {
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

extension AddSubscriberLockResponse: CustomStringConvertible {
    public var description: String { "AddSubscriberLockResponse()" }
}