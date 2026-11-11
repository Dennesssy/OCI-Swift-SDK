import Foundation

// MARK: - SpanLogCollection

public struct SpanLogCollection: Codable, Sendable {

    public var timeCreated: Date?
    public var eventName: String?
    public var spanLogs: [SpanLog]?

    private enum CodingKeys: String, CodingKey {
        case timeCreated, eventName, spanLogs
    }

    public init(
                timeCreated: Date? = nil,
                eventName: String? = nil,
                spanLogs: [SpanLog]? = nil
    ) {
        self.timeCreated = timeCreated
        self.eventName = eventName
        self.spanLogs = spanLogs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SpanLogCollection: CustomStringConvertible {
    public var description: String { "SpanLogCollection()" }
}