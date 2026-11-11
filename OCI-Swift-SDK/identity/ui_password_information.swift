import Foundation

// MARK: - UiPasswordInformation

public struct UiPasswordInformation: Codable, Sendable {

    public var userId: String?
    public var timeCreated: Date?
    public var lifecycleState: UiPasswordInformationLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case userId, timeCreated, lifecycleState
    }

    public init(
                userId: String? = nil,
                timeCreated: Date? = nil,
                lifecycleState: UiPasswordInformationLifecycleStateEnum? = nil
    ) {
        self.userId = userId
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UiPasswordInformation: CustomStringConvertible {
    public var description: String { "UiPasswordInformation()" }
}