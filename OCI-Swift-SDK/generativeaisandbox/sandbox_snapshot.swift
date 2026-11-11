import Foundation

// MARK: - SandboxSnapshot

public struct SandboxSnapshot: Codable, Sendable {

    public var id: String?
    public var lifecycleState: SandboxSnapshotLifecycleStateEnum
    public var displayName: String?
    public var projectId: String?
    public var sandboxId: String?
    public var runtime: String?
    public var expirationDuration: String?
    public var sizeBytes: Int64?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeExpires: Date?

    private enum CodingKeys: String, CodingKey {
        case id, lifecycleState, displayName, projectId, sandboxId, runtime, expirationDuration, sizeBytes, timeCreated, timeUpdated, timeExpires
    }

    public init(
                id: String? = nil,
                lifecycleState: SandboxSnapshotLifecycleStateEnum,
                displayName: String? = nil,
                projectId: String? = nil,
                sandboxId: String? = nil,
                runtime: String? = nil,
                expirationDuration: String? = nil,
                sizeBytes: Int64? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeExpires: Date? = nil
    ) {
        self.id = id
        self.lifecycleState = lifecycleState
        self.displayName = displayName
        self.projectId = projectId
        self.sandboxId = sandboxId
        self.runtime = runtime
        self.expirationDuration = expirationDuration
        self.sizeBytes = sizeBytes
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeExpires = timeExpires
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxSnapshot: CustomStringConvertible {
    public var description: String { "SandboxSnapshot()" }
}