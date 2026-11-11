import Foundation

// MARK: - DiagnosisResults

public struct DiagnosisResults: Codable, Sendable {

    public var recommendationReports: [RecommendationReport]

    private enum CodingKeys: String, CodingKey {
        case recommendationReports
    }

    public init(
                recommendationReports: [RecommendationReport]
    ) {
        self.recommendationReports = recommendationReports
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiagnosisResults: CustomStringConvertible {
    public var description: String { "DiagnosisResults()" }
}