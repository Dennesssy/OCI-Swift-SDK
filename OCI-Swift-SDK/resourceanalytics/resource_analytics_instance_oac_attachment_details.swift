import Foundation

// MARK: - ResourceAnalyticsInstanceOacAttachmentDetails

public struct ResourceAnalyticsInstanceOacAttachmentDetails: Codable, Sendable {

    public var idcsDomainId: String?
    public var networkDetails: ResourceAnalyticsInstanceOacNetworkDetails?
    public var subnetId: String?
    public var nsgIds: [String]?
    public var licenseModel: ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum?
    public var capacityType: ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum?
    public var capacityValue: Int?

    private enum CodingKeys: String, CodingKey {
        case idcsDomainId, networkDetails, subnetId, nsgIds, licenseModel, capacityType, capacityValue
    }

    public init(
                idcsDomainId: String? = nil,
                networkDetails: ResourceAnalyticsInstanceOacNetworkDetails? = nil,
                subnetId: String? = nil,
                nsgIds: [String]? = nil,
                licenseModel: ResourceAnalyticsInstanceOacAttachmentDetailsLicenseModelEnum? = nil,
                capacityType: ResourceAnalyticsInstanceOacAttachmentDetailsCapacityTypeEnum? = nil,
                capacityValue: Int? = nil
    ) {
        self.idcsDomainId = idcsDomainId
        self.networkDetails = networkDetails
        self.subnetId = subnetId
        self.nsgIds = nsgIds
        self.licenseModel = licenseModel
        self.capacityType = capacityType
        self.capacityValue = capacityValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceAnalyticsInstanceOacAttachmentDetails: CustomStringConvertible {
    public var description: String { "ResourceAnalyticsInstanceOacAttachmentDetails()" }
}