import Foundation

// MARK: - RecommendationReport

public struct RecommendationReport: Codable, Sendable {

    public var summary: String?
    public var totalIssues: Int?
    public var criticalIssues: Int?
    public var warningIssues: Int?
    public var infoIssues: Int?
    public var recommendations: [Recommendation]
    public var timeGenerated: Date?
    public var metadata: Metadata?

    private enum CodingKeys: String, CodingKey {
        case summary, totalIssues, criticalIssues, warningIssues, infoIssues, recommendations, timeGenerated, metadata
    }

    public init(
                summary: String? = nil,
                totalIssues: Int? = nil,
                criticalIssues: Int? = nil,
                warningIssues: Int? = nil,
                infoIssues: Int? = nil,
                recommendations: [Recommendation],
                timeGenerated: Date? = nil,
                metadata: Metadata? = nil
    ) {
        self.summary = summary
        self.totalIssues = totalIssues
        self.criticalIssues = criticalIssues
        self.warningIssues = warningIssues
        self.infoIssues = infoIssues
        self.recommendations = recommendations
        self.timeGenerated = timeGenerated
        self.metadata = metadata
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RecommendationReport: CustomStringConvertible {
    public var description: String { "RecommendationReport()" }
}