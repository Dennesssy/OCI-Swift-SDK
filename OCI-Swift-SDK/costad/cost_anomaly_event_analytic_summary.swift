import Foundation

// MARK: - CostAnomalyEventAnalyticSummary

public struct CostAnomalyEventAnalyticSummary: Codable, Sendable {

    public var count: Int?
    public var averageCostImpact: Double?
    public var averageCostVariance: Double?

    private enum CodingKeys: String, CodingKey {
        case count, averageCostImpact, averageCostVariance
    }

    public init(
                count: Int? = nil,
                averageCostImpact: Double? = nil,
                averageCostVariance: Double? = nil
    ) {
        self.count = count
        self.averageCostImpact = averageCostImpact
        self.averageCostVariance = averageCostVariance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CostAnomalyEventAnalyticSummary: CustomStringConvertible {
    public var description: String { "CostAnomalyEventAnalyticSummary()" }
}