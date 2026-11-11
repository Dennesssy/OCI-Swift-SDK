import Foundation

// MARK: - RequestPerformanceTuningAnalysisRequest

public struct RequestPerformanceTuningAnalysisRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var requestPerformanceTuningAnalysisDetails: RequestPerformanceTuningAnalysisDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, requestPerformanceTuningAnalysisDetails
    }

    public init(
                opcRequestId: String? = nil,
                requestPerformanceTuningAnalysisDetails: RequestPerformanceTuningAnalysisDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.requestPerformanceTuningAnalysisDetails = requestPerformanceTuningAnalysisDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestPerformanceTuningAnalysisRequest: CustomStringConvertible {
    public var description: String { "RequestPerformanceTuningAnalysisRequest()" }
}

// MARK: - RequestPerformanceTuningAnalysisResponse

public struct RequestPerformanceTuningAnalysisResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestPerformanceTuningAnalysisResponse: CustomStringConvertible {
    public var description: String { "RequestPerformanceTuningAnalysisResponse()" }
}