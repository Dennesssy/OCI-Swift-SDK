import Foundation

// MARK: - GetServiceProviderRequest

public struct GetServiceProviderRequest: Codable, Sendable {
    public var serviceProviderId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case serviceProviderId, opcRequestId
    }

    public init(
                serviceProviderId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.serviceProviderId = serviceProviderId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetServiceProviderRequest: CustomStringConvertible {
    public var description: String { "GetServiceProviderRequest()" }
}

// MARK: - GetServiceProviderResponse

public struct GetServiceProviderResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var serviceProvider: ServiceProvider?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, serviceProvider
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                serviceProvider: ServiceProvider? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.serviceProvider = serviceProvider
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetServiceProviderResponse: CustomStringConvertible {
    public var description: String { "GetServiceProviderResponse()" }
}