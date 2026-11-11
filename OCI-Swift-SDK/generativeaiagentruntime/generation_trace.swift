import Foundation

// MARK: - GenerationTrace

public struct GenerationTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var generation: String?
    public var input: String?
    public var usage: [Usage]?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, generation, input, usage
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                generation: String? = nil,
                input: String? = nil,
                usage: [Usage]? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.generation = generation
        self.input = input
        self.usage = usage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GenerationTrace: CustomStringConvertible {
    public var description: String { "GenerationTrace()" }
}