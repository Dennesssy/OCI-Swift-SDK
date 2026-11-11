import Foundation

// MARK: - GetContainerConfigurationRequest

public struct GetContainerConfigurationRequest: Codable, Sendable {
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

extension GetContainerConfigurationRequest: CustomStringConvertible {
    public var description: String { "GetContainerConfigurationRequest()" }
}

// MARK: - GetContainerConfigurationResponse

public struct GetContainerConfigurationResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var containerConfiguration: ContainerConfiguration?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, containerConfiguration
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                containerConfiguration: ContainerConfiguration? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.containerConfiguration = containerConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetContainerConfigurationResponse: CustomStringConvertible {
    public var description: String { "GetContainerConfigurationResponse()" }
}