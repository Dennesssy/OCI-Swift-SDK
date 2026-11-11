import Foundation

// MARK: - GetServiceProviderActionRequest

public struct GetServiceProviderActionRequest: Codable, Sendable {
    public var serviceProviderActionId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case serviceProviderActionId, opcRequestId
    }

    public init(
                serviceProviderActionId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.serviceProviderActionId = serviceProviderActionId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetServiceProviderActionRequest: CustomStringConvertible {
    public var description: String { "GetServiceProviderActionRequest()" }
}

// MARK: - GetServiceProviderActionResponse

public struct GetServiceProviderActionResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var serviceProviderAction: ServiceProviderAction?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, serviceProviderAction
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                serviceProviderAction: ServiceProviderAction? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.serviceProviderAction = serviceProviderAction
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetServiceProviderActionResponse: CustomStringConvertible {
    public var description: String { "GetServiceProviderActionResponse()" }
}