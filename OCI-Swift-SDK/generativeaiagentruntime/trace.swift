import Foundation

// MARK: - trace

public struct trace: Codable, Sendable {

    public var jsonData: Data?
    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var traceType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, key, parentKey, source, timeCreated, timeFinished, traceType
    }

    public init(
                jsonData: Data? = nil,
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                traceType: String? = nil
    ) {
        self.jsonData = jsonData
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.traceType = traceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension trace: CustomStringConvertible {
    public var description: String { "trace()" }
}