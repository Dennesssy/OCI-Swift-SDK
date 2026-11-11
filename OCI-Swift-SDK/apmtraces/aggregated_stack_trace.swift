import Foundation

// MARK: - AggregatedStackTrace

public struct AggregatedStackTrace: Codable, Sendable {

    public var stackTraceElement: StackTraceElement?
    public var children: [AggregatedStackTrace]?

    private enum CodingKeys: String, CodingKey {
        case stackTraceElement, children
    }

    public init(
                stackTraceElement: StackTraceElement? = nil,
                children: [AggregatedStackTrace]? = nil
    ) {
        self.stackTraceElement = stackTraceElement
        self.children = children
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregatedStackTrace: CustomStringConvertible {
    public var description: String { "AggregatedStackTrace()" }
}