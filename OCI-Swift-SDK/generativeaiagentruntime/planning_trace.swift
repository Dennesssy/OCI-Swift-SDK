import Foundation

// MARK: - PlanningTrace

public struct PlanningTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var input: String?
    public var output: String?
    public var usage: [Usage]?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, input, output, usage
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                input: String? = nil,
                output: String? = nil,
                usage: [Usage]? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.input = input
        self.output = output
        self.usage = usage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PlanningTrace: CustomStringConvertible {
    public var description: String { "PlanningTrace()" }
}