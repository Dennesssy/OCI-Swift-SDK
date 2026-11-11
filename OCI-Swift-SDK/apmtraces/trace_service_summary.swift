import Foundation

// MARK: - TraceServiceSummary

public struct TraceServiceSummary: Codable, Sendable {

    public var spanServiceName: String?
    public var totalSpans: Int64?
    public var errorSpans: Int64?

    private enum CodingKeys: String, CodingKey {
        case spanServiceName, totalSpans, errorSpans
    }

    public init(
                spanServiceName: String? = nil,
                totalSpans: Int64? = nil,
                errorSpans: Int64? = nil
    ) {
        self.spanServiceName = spanServiceName
        self.totalSpans = totalSpans
        self.errorSpans = errorSpans
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TraceServiceSummary: CustomStringConvertible {
    public var description: String { "TraceServiceSummary()" }
}