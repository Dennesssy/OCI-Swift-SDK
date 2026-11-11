import Foundation

// MARK: - DeleteJavaMigrationAnalysisRequest

public struct DeleteJavaMigrationAnalysisRequest: Codable, Sendable {
    public var javaMigrationAnalysisId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case javaMigrationAnalysisId, ifMatch, opcRequestId
    }

    public init(
                javaMigrationAnalysisId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.javaMigrationAnalysisId = javaMigrationAnalysisId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteJavaMigrationAnalysisRequest: CustomStringConvertible {
    public var description: String { "DeleteJavaMigrationAnalysisRequest()" }
}

// MARK: - DeleteJavaMigrationAnalysisResponse

public struct DeleteJavaMigrationAnalysisResponse: Codable, Sendable {
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

extension DeleteJavaMigrationAnalysisResponse: CustomStringConvertible {
    public var description: String { "DeleteJavaMigrationAnalysisResponse()" }
}