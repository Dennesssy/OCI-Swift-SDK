import Foundation

// MARK: - MetricError

public struct MetricError: Codable, Sendable {

    public var timeGenerated: Date?
    public var errorType: String?
    public var contentType: String?
    public var data: String?
    public var subject: String?
    public var level: String?

    private enum CodingKeys: String, CodingKey {
        case timeGenerated, errorType, contentType, data, subject, level
    }

    public init(
                timeGenerated: Date? = nil,
                errorType: String? = nil,
                contentType: String? = nil,
                data: String? = nil,
                subject: String? = nil,
                level: String? = nil
    ) {
        self.timeGenerated = timeGenerated
        self.errorType = errorType
        self.contentType = contentType
        self.data = data
        self.subject = subject
        self.level = level
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MetricError: CustomStringConvertible {
    public var description: String { "MetricError()" }
}