import Foundation

// MARK: - CreateTenancyAttachmentDetails

public struct CreateTenancyAttachmentDetails: Codable, Sendable {

    public var resourceAnalyticsInstanceId: String?
    public var tenancyId: String?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, tenancyId, description
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                tenancyId: String? = nil,
                description: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.tenancyId = tenancyId
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
