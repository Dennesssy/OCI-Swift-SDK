import Foundation

// MARK: - ExternalLocation

public struct ExternalLocation: Codable, Sendable {

    public var cspRegion: String?
    public var cspRegionDisplayName: String?
    public var cspPhysicalAz: String?
    public var cspPhysicalAzDisplayName: String?
    public var serviceName: SubscriptionTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case cspRegion, cspRegionDisplayName, cspPhysicalAz, cspPhysicalAzDisplayName, serviceName
    }

    public init(
                cspRegion: String? = nil,
                cspRegionDisplayName: String? = nil,
                cspPhysicalAz: String? = nil,
                cspPhysicalAzDisplayName: String? = nil,
                serviceName: SubscriptionTypeEnum? = nil
    ) {
        self.cspRegion = cspRegion
        self.cspRegionDisplayName = cspRegionDisplayName
        self.cspPhysicalAz = cspPhysicalAz
        self.cspPhysicalAzDisplayName = cspPhysicalAzDisplayName
        self.serviceName = serviceName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocation: CustomStringConvertible {
    public var description: String { "ExternalLocation()" }
}