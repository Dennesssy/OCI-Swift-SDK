import Foundation

// MARK: - PatchRecommendationSummary

public struct PatchRecommendationSummary: Codable, Sendable {

    public var total: Int?
    public var upToDate: Int?
    public var patchAvailable: Int?

    private enum CodingKeys: String, CodingKey {
        case total, upToDate, patchAvailable
    }

    public init(
                total: Int? = nil,
                upToDate: Int? = nil,
                patchAvailable: Int? = nil
    ) {
        self.total = total
        self.upToDate = upToDate
        self.patchAvailable = patchAvailable
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchRecommendationSummary: CustomStringConvertible {
    public var description: String { "PatchRecommendationSummary()" }
}