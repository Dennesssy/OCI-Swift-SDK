import Foundation

// MARK: - UsageDetails

public struct UsageDetails: Codable, Sendable {

    public var inputTokenCount: Int?
    public var outputTokenCount: Int?
    public var inputCharCount: Int?
    public var outputCharCount: Int?

    private enum CodingKeys: String, CodingKey {
        case inputTokenCount, outputTokenCount, inputCharCount, outputCharCount
    }

    public init(
                inputTokenCount: Int? = nil,
                outputTokenCount: Int? = nil,
                inputCharCount: Int? = nil,
                outputCharCount: Int? = nil
    ) {
        self.inputTokenCount = inputTokenCount
        self.outputTokenCount = outputTokenCount
        self.inputCharCount = inputCharCount
        self.outputCharCount = outputCharCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UsageDetails: CustomStringConvertible {
    public var description: String { "UsageDetails()" }
}