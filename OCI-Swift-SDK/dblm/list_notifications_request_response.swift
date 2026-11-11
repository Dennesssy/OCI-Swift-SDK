import Foundation

// MARK: - ListNotificationsRequest

public struct ListNotificationsRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var limit: Int?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, limit
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                limit: Int? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.limit = limit
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNotificationsRequest: CustomStringConvertible {
    public var description: String { "ListNotificationsRequest()" }
}

// MARK: - ListNotificationsResponse

public struct ListNotificationsResponse: Codable, Sendable {
    public var opcNextPage: String?
    public var opcRequestId: String?
    public var notificationCollection: NotificationCollection?

    private enum CodingKeys: String, CodingKey {
        case opcNextPage, opcRequestId, notificationCollection
    }

    public init(
                opcNextPage: String? = nil,
                opcRequestId: String? = nil,
                notificationCollection: NotificationCollection? = nil
    ) {
        self.opcNextPage = opcNextPage
        self.opcRequestId = opcRequestId
        self.notificationCollection = notificationCollection
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ListNotificationsResponse: CustomStringConvertible {
    public var description: String { "ListNotificationsResponse()" }
}