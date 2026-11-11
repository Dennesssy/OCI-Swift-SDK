import Foundation

// MARK: - WorkRequestLog

public struct WorkRequestLog: Codable, Sendable {

    public var message: String?
    public var timestamp: Date?

    private enum CodingKeys: String, CodingKey {
        case message, timestamp
    }

    public init(
                message: String? = nil,
                timestamp: Date? = nil
    ) {
        self.message = message
        self.timestamp = timestamp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WorkRequestLog: CustomStringConvertible {
    public var description: String { "WorkRequestLog()" }
}