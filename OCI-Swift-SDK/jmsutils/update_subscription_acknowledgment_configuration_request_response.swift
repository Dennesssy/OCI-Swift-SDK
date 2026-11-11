import Foundation

// MARK: - UpdateSubscriptionAcknowledgmentConfigurationRequest

public struct UpdateSubscriptionAcknowledgmentConfigurationRequest: Codable, Sendable {
    public var compartmentId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateSubscriptionAcknowledgmentConfigurationDetails: UpdateSubscriptionAcknowledgmentConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, ifMatch, opcRequestId, updateSubscriptionAcknowledgmentConfigurationDetails
    }

    public init(
                compartmentId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateSubscriptionAcknowledgmentConfigurationDetails: UpdateSubscriptionAcknowledgmentConfigurationDetails? = nil
    ) {
        self.compartmentId = compartmentId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateSubscriptionAcknowledgmentConfigurationDetails = updateSubscriptionAcknowledgmentConfigurationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateSubscriptionAcknowledgmentConfigurationRequest: CustomStringConvertible {
    public var description: String { "UpdateSubscriptionAcknowledgmentConfigurationRequest()" }
}

// MARK: - UpdateSubscriptionAcknowledgmentConfigurationResponse

public struct UpdateSubscriptionAcknowledgmentConfigurationResponse: Codable, Sendable {
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

extension UpdateSubscriptionAcknowledgmentConfigurationResponse: CustomStringConvertible {
    public var description: String { "UpdateSubscriptionAcknowledgmentConfigurationResponse()" }
}