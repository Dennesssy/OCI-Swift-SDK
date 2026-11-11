import Foundation

// MARK: - JavaMigrationAnalysisCollection

public struct JavaMigrationAnalysisCollection: Codable, Sendable {

    public var items: [JavaMigrationAnalysisSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [JavaMigrationAnalysisSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension JavaMigrationAnalysisCollection: CustomStringConvertible {
    public var description: String { "JavaMigrationAnalysisCollection()" }
}