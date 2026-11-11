import Foundation

// MARK: - SandboxCommandSummary

public struct SandboxCommandSummary: Codable, Sendable {

    public var id: String?
    public var sandboxId: String?
    public var command: String?
    public var cwd: String?
    public var args: [String]?
    public var exitCode: Int?
    public var timeCreated: Date?
    public var timeUpdated: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case id, sandboxId, command, cwd, args, exitCode, timeCreated, timeUpdated, timeStarted, timeFinished
    }

    public init(
                id: String? = nil,
                sandboxId: String? = nil,
                command: String? = nil,
                cwd: String? = nil,
                args: [String]? = nil,
                exitCode: Int? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.id = id
        self.sandboxId = sandboxId
        self.command = command
        self.cwd = cwd
        self.args = args
        self.exitCode = exitCode
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandSummary: CustomStringConvertible {
    public var description: String { "SandboxCommandSummary()" }
}