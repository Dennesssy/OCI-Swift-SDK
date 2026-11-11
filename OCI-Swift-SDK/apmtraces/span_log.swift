import Foundation

// MARK: - SpanLog

public struct SpanLog: Codable, Sendable {

    public var logKey: String?
    public var logValue: String?

    private enum CodingKeys: String, CodingKey {
        case logKey, logValue
    }

    public init(
                logKey: String? = nil,
                logValue: String? = nil
    ) {
        self.logKey = logKey
        self.logValue = logValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SpanLog: CustomStringConvertible {
    public var description: String { "SpanLog()" }
}