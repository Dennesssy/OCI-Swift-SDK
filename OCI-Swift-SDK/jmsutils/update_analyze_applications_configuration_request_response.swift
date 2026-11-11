import Foundation

// MARK: - UpdateAnalyzeApplicationsConfigurationRequest

public struct UpdateAnalyzeApplicationsConfigurationRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateAnalyzeApplicationsConfigurationDetails: UpdateAnalyzeApplicationsConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, updateAnalyzeApplicationsConfigurationDetails
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateAnalyzeApplicationsConfigurationDetails: UpdateAnalyzeApplicationsConfigurationDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateAnalyzeApplicationsConfigurationDetails = updateAnalyzeApplicationsConfigurationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateAnalyzeApplicationsConfigurationRequest: CustomStringConvertible {
    public var description: String { "UpdateAnalyzeApplicationsConfigurationRequest()" }
}

// MARK: - UpdateAnalyzeApplicationsConfigurationResponse

public struct UpdateAnalyzeApplicationsConfigurationResponse: Codable, Sendable {
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

extension UpdateAnalyzeApplicationsConfigurationResponse: CustomStringConvertible {
    public var description: String { "UpdateAnalyzeApplicationsConfigurationResponse()" }
}