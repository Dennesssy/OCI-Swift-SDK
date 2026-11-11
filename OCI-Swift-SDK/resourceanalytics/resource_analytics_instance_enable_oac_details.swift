import Foundation

// MARK: - ResourceAnalyticsInstanceEnableOacDetails

public struct ResourceAnalyticsInstanceEnableOacDetails: Codable, Sendable {

    public var attachmentType: ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum
    public var attachmentDetails: ResourceAnalyticsInstanceOacAttachmentDetails?

    private enum CodingKeys: String, CodingKey {
        case attachmentType, attachmentDetails
    }

    public init(
                attachmentType: ResourceAnalyticsInstanceEnableOacDetailsAttachmentTypeEnum,
                attachmentDetails: ResourceAnalyticsInstanceOacAttachmentDetails? = nil
    ) {
        self.attachmentType = attachmentType
        self.attachmentDetails = attachmentDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnalyticsInstanceEnableOacDetails: CustomStringConvertible {
    public var description: String { "ResourceAnalyticsInstanceEnableOacDetails()" }
}