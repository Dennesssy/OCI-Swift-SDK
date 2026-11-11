import Foundation

// MARK: - DeletePerformanceTuningAnalysisRequest

public struct DeletePerformanceTuningAnalysisRequest: Codable, Sendable {
    public var performanceTuningAnalysisId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case performanceTuningAnalysisId, ifMatch, opcRequestId
    }

    public init(
                performanceTuningAnalysisId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.performanceTuningAnalysisId = performanceTuningAnalysisId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePerformanceTuningAnalysisRequest: CustomStringConvertible {
    public var description: String { "DeletePerformanceTuningAnalysisRequest()" }
}

// MARK: - DeletePerformanceTuningAnalysisResponse

public struct DeletePerformanceTuningAnalysisResponse: Codable, Sendable {
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId
    }

    public init(
                opcRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeletePerformanceTuningAnalysisResponse: CustomStringConvertible {
    public var description: String { "DeletePerformanceTuningAnalysisResponse()" }
}