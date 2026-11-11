import Foundation

// MARK: - BuildRunProgressSummary

public struct BuildRunProgressSummary: Codable, Sendable {

    public var timeStarted: Date?
    public var timeFinished: Date?

    private enum CodingKeys: String, CodingKey {
        case timeStarted, timeFinished
    }

    public init(
                timeStarted: Date? = nil,
                timeFinished: Date? = nil
    ) {
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BuildRunProgressSummary: CustomStringConvertible {
    public var description: String { "BuildRunProgressSummary()" }
}