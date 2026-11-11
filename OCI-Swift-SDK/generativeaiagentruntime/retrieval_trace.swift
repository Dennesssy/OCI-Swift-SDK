import Foundation

// MARK: - RetrievalTrace

public struct RetrievalTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var retrievalInput: String?
    public var citations: [Citation]?
    public var usage: [Usage]?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, retrievalInput, citations, usage
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                retrievalInput: String? = nil,
                citations: [Citation]? = nil,
                usage: [Usage]? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.retrievalInput = retrievalInput
        self.citations = citations
        self.usage = usage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RetrievalTrace: CustomStringConvertible {
    public var description: String { "RetrievalTrace()" }
}