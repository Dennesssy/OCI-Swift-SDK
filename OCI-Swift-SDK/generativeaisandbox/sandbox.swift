import Foundation

// MARK: - Sandbox

public struct Sandbox: Codable, Sendable {

    public var id: String?
    public var lifecycleState: SandboxLifecycleStateEnum
    public var runtime: String?
    public var displayName: String?
    public var projectId: String?
    public var warmpoolName: String?
    public var publishedPortAuthMode: SandboxPublishedPortAuthModeEnum?
    public var publishedPorts: [PublishedPort]?
    public var environmentVariables: [EnvironmentVariable]?
    public var expiresInMinutes: Int?
    public var expirationDuration: String?
    public var shape: SandboxShapeEnum?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeExpires: Date?
    public var timeStopped: Date?

    private enum CodingKeys: String, CodingKey {
        case id, lifecycleState, runtime, displayName, projectId, warmpoolName, publishedPortAuthMode, publishedPorts, environmentVariables, expiresInMinutes, expirationDuration, shape, timeCreated, timeUpdated, timeExpires, timeStopped
    }

    public init(
                id: String? = nil,
                lifecycleState: SandboxLifecycleStateEnum,
                runtime: String? = nil,
                displayName: String? = nil,
                projectId: String? = nil,
                warmpoolName: String? = nil,
                publishedPortAuthMode: SandboxPublishedPortAuthModeEnum? = nil,
                publishedPorts: [PublishedPort]? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                expiresInMinutes: Int? = nil,
                expirationDuration: String? = nil,
                shape: SandboxShapeEnum? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeExpires: Date? = nil,
                timeStopped: Date? = nil
    ) {
        self.id = id
        self.lifecycleState = lifecycleState
        self.runtime = runtime
        self.displayName = displayName
        self.projectId = projectId
        self.warmpoolName = warmpoolName
        self.publishedPortAuthMode = publishedPortAuthMode
        self.publishedPorts = publishedPorts
        self.environmentVariables = environmentVariables
        self.expiresInMinutes = expiresInMinutes
        self.expirationDuration = expirationDuration
        self.shape = shape
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeExpires = timeExpires
        self.timeStopped = timeStopped
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Sandbox: CustomStringConvertible {
    public var description: String { "Sandbox()" }
}