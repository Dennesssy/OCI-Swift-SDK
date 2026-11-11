import Foundation

// MARK: - PerformanceTuningAnalysisCollection

public struct PerformanceTuningAnalysisCollection: Codable, Sendable {

    public var items: [PerformanceTuningAnalysisSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PerformanceTuningAnalysisSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PerformanceTuningAnalysisCollection: CustomStringConvertible {
    public var description: String { "PerformanceTuningAnalysisCollection()" }
}