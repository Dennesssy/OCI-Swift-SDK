import Foundation

// MARK: - MirrorRepositoryConfig

public struct MirrorRepositoryConfig: Codable, Sendable {

    public var connectorId: String?
    public var repositoryUrl: String?
    public var triggerSchedule: TriggerSchedule?

    private enum CodingKeys: String, CodingKey {
        case connectorId, repositoryUrl, triggerSchedule
    }

    public init(
                connectorId: String? = nil,
                repositoryUrl: String? = nil,
                triggerSchedule: TriggerSchedule? = nil
    ) {
        self.connectorId = connectorId
        self.repositoryUrl = repositoryUrl
        self.triggerSchedule = triggerSchedule
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MirrorRepositoryConfig: CustomStringConvertible {
    public var description: String { "MirrorRepositoryConfig()" }
}