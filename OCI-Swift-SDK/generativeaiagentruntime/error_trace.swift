import Foundation

// MARK: - ErrorTrace

public struct ErrorTrace: Codable, Sendable {

    public var key: String?
    public var parentKey: String?
    public var source: SourceDetails?
    public var timeCreated: Date?
    public var timeFinished: Date?
    public var errorMessage: String?
    public var code: String?

    private enum CodingKeys: String, CodingKey {
        case key, parentKey, source, timeCreated, timeFinished, errorMessage, code
    }

    public init(
                key: String? = nil,
                parentKey: String? = nil,
                source: SourceDetails? = nil,
                timeCreated: Date? = nil,
                timeFinished: Date? = nil,
                errorMessage: String? = nil,
                code: String? = nil
    ) {
        self.key = key
        self.parentKey = parentKey
        self.source = source
        self.timeCreated = timeCreated
        self.timeFinished = timeFinished
        self.errorMessage = errorMessage
        self.code = code
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ErrorTrace: CustomStringConvertible {
    public var description: String { "ErrorTrace()" }
}