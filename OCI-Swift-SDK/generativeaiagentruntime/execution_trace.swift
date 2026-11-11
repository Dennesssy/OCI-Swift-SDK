import Foundation

// MARK: - ExecutionTrace

public struct ExecutionTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var input: String?
    public var output: String?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, input, output
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                input: String? = nil,
                output: String? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.input = input
        self.output = output
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExecutionTrace: CustomStringConvertible {
    public var description: String { "ExecutionTrace()" }
}