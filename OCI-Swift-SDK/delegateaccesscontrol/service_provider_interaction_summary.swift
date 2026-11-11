import Foundation

// MARK: - ServiceProviderInteractionSummary

public struct ServiceProviderInteractionSummary: Codable, Sendable {

    public var messageIdentifier: String?
    public var userId: String?
    public var userName: String?
    public var message: String?
    public var userType: ServiceProviderInteractionSummaryUserTypeEnum?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case messageIdentifier, userId, userName, message, userType, timestamp
    }

    public init(
                messageIdentifier: String? = nil,
                userId: String? = nil,
                userName: String? = nil,
                message: String? = nil,
                userType: ServiceProviderInteractionSummaryUserTypeEnum? = nil,
                timestamp: Date? = nil
    ) {
        self.messageIdentifier = messageIdentifier
        self.userId = userId
        self.userName = userName
        self.message = message
        self.userType = userType
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderInteractionSummary: CustomStringConvertible {
    public var description: String { "ServiceProviderInteractionSummary()" }
}