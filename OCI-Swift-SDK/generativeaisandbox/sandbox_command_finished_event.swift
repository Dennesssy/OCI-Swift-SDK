import Foundation

// MARK: - SandboxCommandFinishedEvent

public struct SandboxCommandFinishedEvent: Codable, Sendable {

    public var seq: Int64?
    public var timestamp: Date?
    public var commandId: String?
    public var data: String?
    public var exitCode: Int?

    private enum CodingKeys: String, CodingKey {
        case seq, timestamp, commandId, data, exitCode
    }

    public init(
                seq: Int64? = nil,
                timestamp: Date? = nil,
                commandId: String? = nil,
                data: String? = nil,
                exitCode: Int? = nil
    ) {
        self.seq = seq
        self.timestamp = timestamp
        self.commandId = commandId
        self.data = data
        self.exitCode = exitCode
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandFinishedEvent: CustomStringConvertible {
    public var description: String { "SandboxCommandFinishedEvent()" }
}