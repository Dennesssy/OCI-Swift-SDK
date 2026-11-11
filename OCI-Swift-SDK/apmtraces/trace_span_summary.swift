import Foundation

// MARK: - TraceSpanSummary

public struct TraceSpanSummary: Codable, Sendable {

    public var key: String?
    public var timeEarliestSpanStarted: Date?
    public var timeLatestSpanEnded: Date?
    public var spanCount: Int?
    public var errorSpanCount: Int?
    public var traceDurationInMs: Int?
    public var isFault: Bool?
    public var traceStatus: String?
    public var traceErrorType: String?
    public var traceErrorCode: String?
    public var rootSpanOperationName: String?
    public var rootSpanServiceName: String?
    public var timeRootSpanStarted: Date?
    public var timeRootSpanEnded: Date?
    public var rootSpanDurationInMs: Int?
    public var serviceSummaries: [TraceServiceSummary]?

    private enum CodingKeys: String, CodingKey {
        case key, timeEarliestSpanStarted, timeLatestSpanEnded, spanCount, errorSpanCount, traceDurationInMs, isFault, traceStatus, traceErrorType, traceErrorCode, rootSpanOperationName, rootSpanServiceName, timeRootSpanStarted, timeRootSpanEnded, rootSpanDurationInMs, serviceSummaries
    }

    public init(
                key: String? = nil,
                timeEarliestSpanStarted: Date? = nil,
                timeLatestSpanEnded: Date? = nil,
                spanCount: Int? = nil,
                errorSpanCount: Int? = nil,
                traceDurationInMs: Int? = nil,
                isFault: Bool? = nil,
                traceStatus: String? = nil,
                traceErrorType: String? = nil,
                traceErrorCode: String? = nil,
                rootSpanOperationName: String? = nil,
                rootSpanServiceName: String? = nil,
                timeRootSpanStarted: Date? = nil,
                timeRootSpanEnded: Date? = nil,
                rootSpanDurationInMs: Int? = nil,
                serviceSummaries: [TraceServiceSummary]? = nil
    ) {
        self.key = key
        self.timeEarliestSpanStarted = timeEarliestSpanStarted
        self.timeLatestSpanEnded = timeLatestSpanEnded
        self.spanCount = spanCount
        self.errorSpanCount = errorSpanCount
        self.traceDurationInMs = traceDurationInMs
        self.isFault = isFault
        self.traceStatus = traceStatus
        self.traceErrorType = traceErrorType
        self.traceErrorCode = traceErrorCode
        self.rootSpanOperationName = rootSpanOperationName
        self.rootSpanServiceName = rootSpanServiceName
        self.timeRootSpanStarted = timeRootSpanStarted
        self.timeRootSpanEnded = timeRootSpanEnded
        self.rootSpanDurationInMs = rootSpanDurationInMs
        self.serviceSummaries = serviceSummaries
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TraceSpanSummary: CustomStringConvertible {
    public var description: String { "TraceSpanSummary()" }
}