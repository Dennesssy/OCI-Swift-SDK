import Foundation

// MARK: - ExternalLocationDetail

public struct ExternalLocationDetail: Codable, Sendable {

    public var cspRegion: String?
    public var cspRegionDisplayName: String?
    public var cspPhysicalAz: String?
    public var cspPhysicalAzDisplayName: String?
    public var cspLogicalAzDisplayName: String?
    public var cspZoneKeyReferenceId: CspZoneKeyReferenceId?
    public var cspLogicalAz: String?
    public var serviceName: SubscriptionTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case cspRegion, cspRegionDisplayName, cspPhysicalAz, cspPhysicalAzDisplayName, cspLogicalAzDisplayName, cspZoneKeyReferenceId, cspLogicalAz, serviceName
    }

    public init(
                cspRegion: String? = nil,
                cspRegionDisplayName: String? = nil,
                cspPhysicalAz: String? = nil,
                cspPhysicalAzDisplayName: String? = nil,
                cspLogicalAzDisplayName: String? = nil,
                cspZoneKeyReferenceId: CspZoneKeyReferenceId? = nil,
                cspLogicalAz: String? = nil,
                serviceName: SubscriptionTypeEnum? = nil
    ) {
        self.cspRegion = cspRegion
        self.cspRegionDisplayName = cspRegionDisplayName
        self.cspPhysicalAz = cspPhysicalAz
        self.cspPhysicalAzDisplayName = cspPhysicalAzDisplayName
        self.cspLogicalAzDisplayName = cspLogicalAzDisplayName
        self.cspZoneKeyReferenceId = cspZoneKeyReferenceId
        self.cspLogicalAz = cspLogicalAz
        self.serviceName = serviceName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationDetail: CustomStringConvertible {
    public var description: String { "ExternalLocationDetail()" }
}