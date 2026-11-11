import Foundation

// MARK: - GetJavaMigrationAnalysisRequest

public struct GetJavaMigrationAnalysisRequest: Codable, Sendable {
    public var javaMigrationAnalysisId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case javaMigrationAnalysisId, opcRequestId
    }

    public init(
                javaMigrationAnalysisId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.javaMigrationAnalysisId = javaMigrationAnalysisId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetJavaMigrationAnalysisRequest: CustomStringConvertible {
    public var description: String { "GetJavaMigrationAnalysisRequest()" }
}

// MARK: - GetJavaMigrationAnalysisResponse

public struct GetJavaMigrationAnalysisResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var javaMigrationAnalysis: JavaMigrationAnalysis?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, javaMigrationAnalysis
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                javaMigrationAnalysis: JavaMigrationAnalysis? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.javaMigrationAnalysis = javaMigrationAnalysis
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetJavaMigrationAnalysisResponse: CustomStringConvertible {
    public var description: String { "GetJavaMigrationAnalysisResponse()" }
}