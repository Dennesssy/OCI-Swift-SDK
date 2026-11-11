import Foundation

// MARK: - GetSubscriberRequest

public struct GetSubscriberRequest: Codable, Sendable {
    public var subscriberId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case subscriberId, opcRequestId
    }

    public init(
                subscriberId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.subscriberId = subscriberId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSubscriberRequest: CustomStringConvertible {
    public var description: String { "GetSubscriberRequest()" }
}

// MARK: - GetSubscriberResponse

public struct GetSubscriberResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var subscriber: Subscriber?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, subscriber
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                subscriber: Subscriber? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.subscriber = subscriber
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSubscriberResponse: CustomStringConvertible {
    public var description: String { "GetSubscriberResponse()" }
}