import Foundation

// MARK: - Span

public struct Span: Codable, Sendable {

    public var key: String?
    public var traceKey: String?
    public var timeStarted: Date?
    public var timeEnded: Date?
    public var durationInMs: Int64?
    public var operationName: String?
    public var isError: Bool?
    public var parentSpanKey: String?
    public var serviceName: String?
    public var kind: String?
    public var tags: [Tag]?
    public var tagsMetadata: [String: TagMetadata]?
    public var logs: [SpanLogCollection]?
    public var sourceName: SpanSourceNameEnum?

    private enum CodingKeys: String, CodingKey {
        case key, traceKey, timeStarted, timeEnded, durationInMs, operationName, isError, parentSpanKey, serviceName, kind, tags, tagsMetadata, logs, sourceName
    }

    public init(
                key: String? = nil,
                traceKey: String? = nil,
                timeStarted: Date? = nil,
                timeEnded: Date? = nil,
                durationInMs: Int64? = nil,
                operationName: String? = nil,
                isError: Bool? = nil,
                parentSpanKey: String? = nil,
                serviceName: String? = nil,
                kind: String? = nil,
                tags: [Tag]? = nil,
                tagsMetadata: [String: TagMetadata]? = nil,
                logs: [SpanLogCollection]? = nil,
                sourceName: SpanSourceNameEnum? = nil
    ) {
        self.key = key
        self.traceKey = traceKey
        self.timeStarted = timeStarted
        self.timeEnded = timeEnded
        self.durationInMs = durationInMs
        self.operationName = operationName
        self.isError = isError
        self.parentSpanKey = parentSpanKey
        self.serviceName = serviceName
        self.kind = kind
        self.tags = tags
        self.tagsMetadata = tagsMetadata
        self.logs = logs
        self.sourceName = sourceName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Span: CustomStringConvertible {
    public var description: String { "Span()" }
}