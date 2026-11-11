import Foundation

// MARK: - GitlabBuildRunSource

public struct GitlabBuildRunSource: Codable, Sendable {

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

extension GitlabBuildRunSource: CustomStringConvertible {
    public var description: String { "GitlabBuildRunSource()" }
}