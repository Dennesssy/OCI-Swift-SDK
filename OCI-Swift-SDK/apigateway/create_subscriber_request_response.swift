import Foundation

// MARK: - CreateSubscriberRequest

public struct CreateSubscriberRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createSubscriberDetails: CreateSubscriberDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createSubscriberDetails
    }

    public init(
                opcRequestId: String? = nil,
                createSubscriberDetails: CreateSubscriberDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createSubscriberDetails = createSubscriberDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSubscriberRequest: CustomStringConvertible {
    public var description: String { "CreateSubscriberRequest()" }
}

// MARK: - CreateSubscriberResponse

public struct CreateSubscriberResponse: Codable, Sendable {
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var location: String?
    public var subscriber: Subscriber?

    private enum CodingKeys: String, CodingKey {
        case etag, opcWorkRequestId, opcRequestId, location, subscriber
    }

    public init(
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                subscriber: Subscriber? = nil
    ) {
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.location = location
        self.subscriber = subscriber
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSubscriberResponse: CustomStringConvertible {
    public var description: String { "CreateSubscriberResponse()" }
}