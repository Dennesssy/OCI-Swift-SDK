import Foundation

// MARK: - UpdateConfigurationRequest

public struct UpdateConfigurationRequest: Codable, Sendable {
    public var compartmentId: String?
    public var opcRequestId: String?
    public var ifMatch: String?
    public var updateConfigurationDetails: UpdateConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, opcRequestId, ifMatch, updateConfigurationDetails
    }

    public init(
                compartmentId: String? = nil,
                opcRequestId: String? = nil,
                ifMatch: String? = nil,
                updateConfigurationDetails: UpdateConfigurationDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.opcRequestId = opcRequestId
        self.ifMatch = ifMatch
        self.updateConfigurationDetails = updateConfigurationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateConfigurationRequest: CustomStringConvertible {
    public var description: String { "UpdateConfigurationRequest()" }
}

// MARK: - UpdateConfigurationResponse

public struct UpdateConfigurationResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var configuration: Configuration?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, configuration
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                configuration: Configuration? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.configuration = configuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateConfigurationResponse: CustomStringConvertible {
    public var description: String { "UpdateConfigurationResponse()" }
}