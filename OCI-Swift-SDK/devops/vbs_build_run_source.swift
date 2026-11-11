import Foundation

// MARK: - VbsBuildRunSource

public struct VbsBuildRunSource: Codable, Sendable {

    public var triggerId: String?
    public var triggerInfo: TriggerInfo?

    private enum CodingKeys: String, CodingKey {
        case triggerId, triggerInfo
    }

    public init(
                triggerId: String? = nil,
                triggerInfo: TriggerInfo? = nil
    ) {
        self.triggerId = triggerId
        self.triggerInfo = triggerInfo
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VbsBuildRunSource: CustomStringConvertible {
    public var description: String { "VbsBuildRunSource()" }
}