import Foundation

// MARK: - PatchRecommendationsDetailsSummary

public struct PatchRecommendationsDetailsSummary: Codable, Sendable {

    public var patchName: String?
    public var abstractText: String?
    public var classificationName: String?
    public var timeEvaluated: Date?
    public var hasFixForCve: Bool?
    public var timeReleased: Date?

    private enum CodingKeys: String, CodingKey {
        case patchName, abstractText, classificationName, timeEvaluated, hasFixForCve, timeReleased
    }

    public init(
                patchName: String? = nil,
                abstractText: String? = nil,
                classificationName: String? = nil,
                timeEvaluated: Date? = nil,
                hasFixForCve: Bool? = nil,
                timeReleased: Date? = nil
    ) {
        self.patchName = patchName
        self.abstractText = abstractText
        self.classificationName = classificationName
        self.timeEvaluated = timeEvaluated
        self.hasFixForCve = hasFixForCve
        self.timeReleased = timeReleased
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PatchRecommendationsDetailsSummary: CustomStringConvertible {
    public var description: String { "PatchRecommendationsDetailsSummary()" }
}