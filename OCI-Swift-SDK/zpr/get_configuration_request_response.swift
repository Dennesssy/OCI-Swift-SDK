import Foundation

// MARK: - GetConfigurationRequest

public struct GetConfigurationRequest: Codable, Sendable {
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

extension GetConfigurationRequest: CustomStringConvertible {
    public var description: String { "GetConfigurationRequest()" }
}

// MARK: - GetConfigurationResponse

public struct GetConfigurationResponse: Codable, Sendable {
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

extension GetConfigurationResponse: CustomStringConvertible {
    public var description: String { "GetConfigurationResponse()" }
}