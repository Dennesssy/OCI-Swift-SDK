import Foundation

// MARK: - GetPerformanceTuningAnalysisRequest

public struct GetPerformanceTuningAnalysisRequest: Codable, Sendable {
    public var performanceTuningAnalysisId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case performanceTuningAnalysisId, opcRequestId
    }

    public init(
                performanceTuningAnalysisId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.performanceTuningAnalysisId = performanceTuningAnalysisId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPerformanceTuningAnalysisRequest: CustomStringConvertible {
    public var description: String { "GetPerformanceTuningAnalysisRequest()" }
}

// MARK: - GetPerformanceTuningAnalysisResponse

public struct GetPerformanceTuningAnalysisResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var performanceTuningAnalysis: PerformanceTuningAnalysis?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, performanceTuningAnalysis
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                performanceTuningAnalysis: PerformanceTuningAnalysis? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.performanceTuningAnalysis = performanceTuningAnalysis
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetPerformanceTuningAnalysisResponse: CustomStringConvertible {
    public var description: String { "GetPerformanceTuningAnalysisResponse()" }
}