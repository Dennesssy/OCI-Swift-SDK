import Foundation

// MARK: - RunSandboxCommandDetails

public struct RunSandboxCommandDetails: Codable, Sendable {

    public var command: String?
    public var cwd: String?
    public var args: [String]?
    public var environmentVariables: [EnvironmentVariable]?
    public var timeout: String?

    private enum CodingKeys: String, CodingKey {
        case command, cwd, args, environmentVariables, timeout
    }

    public init(
                command: String? = nil,
                cwd: String? = nil,
                args: [String]? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                timeout: String? = nil
    ) {
        self.command = command
        self.cwd = cwd
        self.args = args
        self.environmentVariables = environmentVariables
        self.timeout = timeout
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RunSandboxCommandDetails: CustomStringConvertible {
    public var description: String { "RunSandboxCommandDetails()" }
}