import Foundation

// MARK: - ApiKey

public struct ApiKey: Codable, Sendable {

    public var keyId: String?
    public var keyValue: String?
    public var fingerprint: String?
    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: ApiKeyLifecycleStateEnum?
    public var inactiveStatus: Int64?

    private enum CodingKeys: String, CodingKey {
        case keyId, keyValue, fingerprint, userId, timeCreated, lifecycleState, inactiveStatus
    }

    public init(
                keyId: String? = nil,
                keyValue: String? = nil,
                fingerprint: String? = nil,
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: ApiKeyLifecycleStateEnum? = nil,
                inactiveStatus: Int64? = nil
    ) {
        self.keyId = keyId
        self.keyValue = keyValue
        self.fingerprint = fingerprint
        self.userId = userId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.inactiveStatus = inactiveStatus
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiKey: CustomStringConvertible {
    public var description: String { "ApiKey()" }
}