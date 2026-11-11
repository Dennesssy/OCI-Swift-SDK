import Foundation

// MARK: - RegionSubscription

public struct RegionSubscription: Codable, Sendable {

    public var regionKey: String?
    public var regionName: String?
    public var status: RegionSubscriptionStatusEnum
    public var isHomeRegion: Bool?

    private enum CodingKeys: String, CodingKey {
        case regionKey, regionName, status, isHomeRegion
    }

    public init(
                regionKey: String? = nil,
                regionName: String? = nil,
                status: RegionSubscriptionStatusEnum,
                isHomeRegion: Bool? = nil
    ) {
        self.regionKey = regionKey
        self.regionName = regionName
        self.status = status
        self.isHomeRegion = isHomeRegion
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RegionSubscription: CustomStringConvertible {
    public var description: String { "RegionSubscription()" }
}