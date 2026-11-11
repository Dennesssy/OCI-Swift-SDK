import Foundation

// MARK: - SandboxCommandStartedEvent

public struct SandboxCommandStartedEvent: Codable, Sendable {

    public var seq: Int64?
    public var timestamp: Date?
    public var commandId: String?
    public var data: String?

    private enum CodingKeys: String, CodingKey {
        case seq, timestamp, commandId, data
    }

    public init(
                seq: Int64? = nil,
                timestamp: Date? = nil,
                commandId: String? = nil,
                data: String? = nil
    ) {
        self.seq = seq
        self.timestamp = timestamp
        self.commandId = commandId
        self.data = data
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SandboxCommandStartedEvent: CustomStringConvertible {
    public var description: String { "SandboxCommandStartedEvent()" }
}