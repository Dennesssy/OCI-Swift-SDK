import Foundation

// MARK: - GetSubscriptionAcknowledgmentConfigurationRequest

public struct GetSubscriptionAcknowledgmentConfigurationRequest: Codable, Sendable {
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

extension GetSubscriptionAcknowledgmentConfigurationRequest: CustomStringConvertible {
    public var description: String { "GetSubscriptionAcknowledgmentConfigurationRequest()" }
}

// MARK: - GetSubscriptionAcknowledgmentConfigurationResponse

public struct GetSubscriptionAcknowledgmentConfigurationResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var etag: String?
    public var subscriptionAcknowledgmentConfiguration: SubscriptionAcknowledgmentConfiguration?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, etag, subscriptionAcknowledgmentConfiguration
    }

    public init(
                opcRequestId: String? = nil,
                etag: String? = nil,
                subscriptionAcknowledgmentConfiguration: SubscriptionAcknowledgmentConfiguration? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.etag = etag
        self.subscriptionAcknowledgmentConfiguration = subscriptionAcknowledgmentConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetSubscriptionAcknowledgmentConfigurationResponse: CustomStringConvertible {
    public var description: String { "GetSubscriptionAcknowledgmentConfigurationResponse()" }
}