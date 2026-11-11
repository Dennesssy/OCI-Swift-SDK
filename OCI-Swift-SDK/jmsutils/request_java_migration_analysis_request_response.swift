import Foundation

// MARK: - RequestJavaMigrationAnalysisRequest

public struct RequestJavaMigrationAnalysisRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var requestJavaMigrationAnalysisDetails: RequestJavaMigrationAnalysisDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, requestJavaMigrationAnalysisDetails
    }

    public init(
                opcRequestId: String? = nil,
                requestJavaMigrationAnalysisDetails: RequestJavaMigrationAnalysisDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.requestJavaMigrationAnalysisDetails = requestJavaMigrationAnalysisDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RequestJavaMigrationAnalysisRequest: CustomStringConvertible {
    public var description: String { "RequestJavaMigrationAnalysisRequest()" }
}

// MARK: - RequestJavaMigrationAnalysisResponse

public struct RequestJavaMigrationAnalysisResponse: Codable, Sendable {
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

extension RequestJavaMigrationAnalysisResponse: CustomStringConvertible {
    public var description: String { "RequestJavaMigrationAnalysisResponse()" }
}