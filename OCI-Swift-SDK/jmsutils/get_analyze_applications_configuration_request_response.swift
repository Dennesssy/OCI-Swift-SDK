import Foundation

// MARK: - GetAnalyzeApplicationsConfigurationRequest

public struct GetAnalyzeApplicationsConfigurationRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAnalyzeApplicationsConfigurationRequest: CustomStringConvertible {
    public var description: String { "GetAnalyzeApplicationsConfigurationRequest()" }
}

// MARK: - GetAnalyzeApplicationsConfigurationResponse

public struct GetAnalyzeApplicationsConfigurationResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var analyzeApplicationsConfiguration: AnalyzeApplicationsConfiguration?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, analyzeApplicationsConfiguration
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                analyzeApplicationsConfiguration: AnalyzeApplicationsConfiguration? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.analyzeApplicationsConfiguration = analyzeApplicationsConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetAnalyzeApplicationsConfigurationResponse: CustomStringConvertible {
    public var description: String { "GetAnalyzeApplicationsConfigurationResponse()" }
}