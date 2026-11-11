import Foundation

// MARK: - PerformanceTuningAnalysisTarget

public struct PerformanceTuningAnalysisTarget: Codable, Sendable {

    public var analysisProjectName: String?
    public var artifactObjectStoragePath: String?

    private enum CodingKeys: String, CodingKey {
        case analysisProjectName, artifactObjectStoragePath
    }

    public init(
                analysisProjectName: String? = nil,
                artifactObjectStoragePath: String? = nil
    ) {
        self.analysisProjectName = analysisProjectName
        self.artifactObjectStoragePath = artifactObjectStoragePath
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PerformanceTuningAnalysisTarget: CustomStringConvertible {
    public var description: String { "PerformanceTuningAnalysisTarget()" }
}