import Foundation

// MARK: - Log

public struct Log: Codable, Sendable {

    public var logKey: String?
    public var timestamp: Date?
    public var eventName: String?
    public var traceKey: String?
    public var spanKey: String?
    public var traceFlags: Int?
    public var timeCreated: Date?
    public var timeObserved: Date?
    public var severityText: String?
    public var severityNumber: Int?
    public var body: String?
    public var overflowAttributes: String?
    public var attributes: [Attribute]?
    public var attributeMetadata: [String: AttributeMetadata]?

    private enum CodingKeys: String, CodingKey {
        case logKey, timestamp, eventName, traceKey, spanKey, traceFlags, timeCreated, timeObserved, severityText, severityNumber, body, overflowAttributes, attributes, attributeMetadata
    }

    public init(
                logKey: String? = nil,
                timestamp: Date? = nil,
                eventName: String? = nil,
                traceKey: String? = nil,
                spanKey: String? = nil,
                traceFlags: Int? = nil,
                timeCreated: Date? = nil,
                timeObserved: Date? = nil,
                severityText: String? = nil,
                severityNumber: Int? = nil,
                body: String? = nil,
                overflowAttributes: String? = nil,
                attributes: [Attribute]? = nil,
                attributeMetadata: [String: AttributeMetadata]? = nil
    ) {
        self.logKey = logKey
        self.timestamp = timestamp
        self.eventName = eventName
        self.traceKey = traceKey
        self.spanKey = spanKey
        self.traceFlags = traceFlags
        self.timeCreated = timeCreated
        self.timeObserved = timeObserved
        self.severityText = severityText
        self.severityNumber = severityNumber
        self.body = body
        self.overflowAttributes = overflowAttributes
        self.attributes = attributes
        self.attributeMetadata = attributeMetadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Log: CustomStringConvertible {
    public var description: String { "Log()" }
}