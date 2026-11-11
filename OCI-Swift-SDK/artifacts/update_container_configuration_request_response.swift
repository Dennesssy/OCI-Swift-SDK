import Foundation

// MARK: - UpdateContainerConfigurationRequest

public struct UpdateContainerConfigurationRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateContainerConfigurationDetails: UpdateContainerConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, updateContainerConfigurationDetails
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateContainerConfigurationDetails: UpdateContainerConfigurationDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateContainerConfigurationDetails = updateContainerConfigurationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateContainerConfigurationRequest: CustomStringConvertible {
    public var description: String { "UpdateContainerConfigurationRequest()" }
}

// MARK: - UpdateContainerConfigurationResponse

public struct UpdateContainerConfigurationResponse: Codable, Sendable {
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

extension UpdateContainerConfigurationResponse: CustomStringConvertible {
    public var description: String { "UpdateContainerConfigurationResponse()" }
}