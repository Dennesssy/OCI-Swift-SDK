import Foundation

// MARK: - SandboxCommandOutput

public struct SandboxCommandOutput: Codable, Sendable {

    public var commandId: String?
    public var lastSeq: Int64?
    public var exitCode: Int?
    public var stdout: String?
    public var stderr: String?

    private enum CodingKeys: String, CodingKey {
        case commandId, lastSeq, exitCode, stdout, stderr
    }

    public init(
                commandId: String? = nil,
                lastSeq: Int64? = nil,
                exitCode: Int? = nil,
                stdout: String? = nil,
                stderr: String? = nil
    ) {
        self.commandId = commandId
        self.lastSeq = lastSeq
        self.exitCode = exitCode
        self.stdout = stdout
        self.stderr = stderr
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandOutput: CustomStringConvertible {
    public var description: String { "SandboxCommandOutput()" }
}