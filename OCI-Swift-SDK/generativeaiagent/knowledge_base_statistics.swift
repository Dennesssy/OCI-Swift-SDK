import Foundation

// MARK: - KnowledgeBaseStatistics

public struct KnowledgeBaseStatistics: Codable, Sendable {

    public var sizeInBytes: Int64?
    public var totalIngestedFiles: Int64?

    private enum CodingKeys: String, CodingKey {
        case sizeInBytes, totalIngestedFiles
    }

    public init(
                sizeInBytes: Int64? = nil,
                totalIngestedFiles: Int64? = nil
    ) {
        self.sizeInBytes = sizeInBytes
        self.totalIngestedFiles = totalIngestedFiles
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension KnowledgeBaseStatistics: CustomStringConvertible {
    public var description: String { "KnowledgeBaseStatistics()" }
}