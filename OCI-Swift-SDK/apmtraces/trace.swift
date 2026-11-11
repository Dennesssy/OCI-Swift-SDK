import Foundation

// MARK: - Trace

public struct Trace: Codable, Sendable {

    public var key: String?
    public var spans: [Span]
    public var rootSpanOperationName: String?
    public var timeEarliestSpanStarted: Date?
    public var timeLatestSpanEnded: Date?
    public var spanCount: Int?
    public var errorSpanCount: Int?
    public var rootSpanServiceName: String?
    public var timeRootSpanStarted: Date?
    public var timeRootSpanEnded: Date?
    public var rootSpanDurationInMs: Int?
    public var traceDurationInMs: Int?
    public var isFault: Bool?
    public var traceStatus: String?
    public var traceErrorType: String?
    public var traceErrorCode: String?
    public var serviceSummaries: [TraceServiceSummary]?
    public var sourceName: TraceSourceNameEnum?
    public var spanSummary: TraceSpanSummary?

    private enum CodingKeys: String, CodingKey {
        case key, spans, rootSpanOperationName, timeEarliestSpanStarted, timeLatestSpanEnded, spanCount, errorSpanCount, rootSpanServiceName, timeRootSpanStarted, timeRootSpanEnded, rootSpanDurationInMs, traceDurationInMs, isFault, traceStatus, traceErrorType, traceErrorCode, serviceSummaries, sourceName, spanSummary
    }

    public init(
                key: String? = nil,
                spans: [Span],
                rootSpanOperationName: String? = nil,
                timeEarliestSpanStarted: Date? = nil,
                timeLatestSpanEnded: Date? = nil,
                spanCount: Int? = nil,
                errorSpanCount: Int? = nil,
                rootSpanServiceName: String? = nil,
                timeRootSpanStarted: Date? = nil,
                timeRootSpanEnded: Date? = nil,
                rootSpanDurationInMs: Int? = nil,
                traceDurationInMs: Int? = nil,
                isFault: Bool? = nil,
                traceStatus: String? = nil,
                traceErrorType: String? = nil,
                traceErrorCode: String? = nil,
                serviceSummaries: [TraceServiceSummary]? = nil,
                sourceName: TraceSourceNameEnum? = nil,
                spanSummary: TraceSpanSummary? = nil
    ) {
        self.key = key
        self.spans = spans
        self.rootSpanOperationName = rootSpanOperationName
        self.timeEarliestSpanStarted = timeEarliestSpanStarted
        self.timeLatestSpanEnded = timeLatestSpanEnded
        self.spanCount = spanCount
        self.errorSpanCount = errorSpanCount
        self.rootSpanServiceName = rootSpanServiceName
        self.timeRootSpanStarted = timeRootSpanStarted
        self.timeRootSpanEnded = timeRootSpanEnded
        self.rootSpanDurationInMs = rootSpanDurationInMs
        self.traceDurationInMs = traceDurationInMs
        self.isFault = isFault
        self.traceStatus = traceStatus
        self.traceErrorType = traceErrorType
        self.traceErrorCode = traceErrorCode
        self.serviceSummaries = serviceSummaries
        self.sourceName = sourceName
        self.spanSummary = spanSummary
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Trace: CustomStringConvertible {
    public var description: String { "Trace()" }
}