import Foundation

// MARK: - PerformanceTuningAnalysisSummary

public struct PerformanceTuningAnalysisSummary: Codable, Sendable {

    public var id: String?
    public var workRequestId: String?
    public var compartmentId: String?
    public var analysisProjectName: String?
    public var warningCount: Int?
    public var result: PerformanceTuningAnalysisResultEnum
    public var resultObjectStoragePath: String?
    public var artifactObjectStoragePath: String?
    public var timeCreated: Date?
    public var timeStarted: Date?
    public var timeFinished: Date?
    public var createdBy: Principal?

    private enum CodingKeys: String, CodingKey {
        case id, workRequestId, compartmentId, analysisProjectName, warningCount, result, resultObjectStoragePath, artifactObjectStoragePath, timeCreated, timeStarted, timeFinished, createdBy
    }

    public init(
                id: String? = nil,
                workRequestId: String? = nil,
                compartmentId: String? = nil,
                analysisProjectName: String? = nil,
                warningCount: Int? = nil,
                result: PerformanceTuningAnalysisResultEnum,
                resultObjectStoragePath: String? = nil,
                artifactObjectStoragePath: String? = nil,
                timeCreated: Date? = nil,
                timeStarted: Date? = nil,
                timeFinished: Date? = nil,
                createdBy: Principal? = nil
    ) {
        self.id = id
        self.workRequestId = workRequestId
        self.compartmentId = compartmentId
        self.analysisProjectName = analysisProjectName
        self.warningCount = warningCount
        self.result = result
        self.resultObjectStoragePath = resultObjectStoragePath
        self.artifactObjectStoragePath = artifactObjectStoragePath
        self.timeCreated = timeCreated
        self.timeStarted = timeStarted
        self.timeFinished = timeFinished
        self.createdBy = createdBy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PerformanceTuningAnalysisSummary: CustomStringConvertible {
    public var description: String { "PerformanceTuningAnalysisSummary()" }
}