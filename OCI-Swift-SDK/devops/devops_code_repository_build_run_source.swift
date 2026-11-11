import Foundation

// MARK: - DevopsCodeRepositoryBuildRunSource

public struct DevopsCodeRepositoryBuildRunSource: Codable, Sendable {

    public var triggerId: String?
    public var triggerInfo: TriggerInfo?
    public var repositoryId: String?

    private enum CodingKeys: String, CodingKey {
        case triggerId, triggerInfo, repositoryId
    }

    public init(
                triggerId: String? = nil,
                triggerInfo: TriggerInfo? = nil,
                repositoryId: String? = nil
    ) {
        self.triggerId = triggerId
        self.triggerInfo = triggerInfo
        self.repositoryId = repositoryId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DevopsCodeRepositoryBuildRunSource: CustomStringConvertible {
    public var description: String { "DevopsCodeRepositoryBuildRunSource()" }
}