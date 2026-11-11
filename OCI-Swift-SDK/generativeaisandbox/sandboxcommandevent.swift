import Foundation

// MARK: - sandboxcommandevent

public struct sandboxcommandevent: Codable, Sendable {

    public var jsonData: Data?
    public var data: String?
    public var seq: Int64?
    public var timestamp: Date?
    public var commandId: String?
    public var event: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, data, seq, timestamp, commandId, event
    }

    public init(
                jsonData: Data? = nil,
                data: String? = nil,
                seq: Int64? = nil,
                timestamp: Date? = nil,
                commandId: String? = nil,
                event: String? = nil
    ) {
        self.jsonData = jsonData
        self.data = data
        self.seq = seq
        self.timestamp = timestamp
        self.commandId = commandId
        self.event = event
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension sandboxcommandevent: CustomStringConvertible {
    public var description: String { "sandboxcommandevent()" }
}