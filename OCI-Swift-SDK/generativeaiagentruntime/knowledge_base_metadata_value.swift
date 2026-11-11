import Foundation

// MARK: - KnowledgeBaseMetadataValue

public struct KnowledgeBaseMetadataValue: Codable, Sendable {

    public var value: String?
    public var count: Int64?

    private enum CodingKeys: String, CodingKey {
        case value, count
    }

    public init(
                value: String? = nil,
                count: Int64? = nil
    ) {
        self.value = value
        self.count = count
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KnowledgeBaseMetadataValue: CustomStringConvertible {
    public var description: String { "KnowledgeBaseMetadataValue()" }
}