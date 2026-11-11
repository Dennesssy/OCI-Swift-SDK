import Foundation

// MARK: - NotificationConfig

public struct NotificationConfig: Codable, Sendable {

    public var topicId: String?

    private enum CodingKeys: String, CodingKey {
        case topicId
    }

    public init(
                topicId: String? = nil
    ) {
        self.topicId = topicId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NotificationConfig: CustomStringConvertible {
    public var description: String { "NotificationConfig()" }
}