import Foundation

// MARK: - ServiceProviderInteractionRequestRequest

public struct ServiceProviderInteractionRequestRequest: Codable, Sendable {
    public var delegatedResourceAccessRequestId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var serviceProviderInteractionRequestDetails: ServiceProviderInteractionRequestDetails?

    private enum CodingKeys: String, CodingKey {
        case delegatedResourceAccessRequestId, ifMatch, opcRequestId, serviceProviderInteractionRequestDetails
    }

    public init(
                delegatedResourceAccessRequestId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                serviceProviderInteractionRequestDetails: ServiceProviderInteractionRequestDetails? = nil
    ) {
        self.delegatedResourceAccessRequestId = delegatedResourceAccessRequestId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.serviceProviderInteractionRequestDetails = serviceProviderInteractionRequestDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceProviderInteractionRequestRequest: CustomStringConvertible {
    public var description: String { "ServiceProviderInteractionRequestRequest()" }
}

// MARK: - ServiceProviderInteractionRequestResponse

public struct ServiceProviderInteractionRequestResponse: Codable, Sendable {
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

extension ServiceProviderInteractionRequestResponse: CustomStringConvertible {
    public var description: String { "ServiceProviderInteractionRequestResponse()" }
}