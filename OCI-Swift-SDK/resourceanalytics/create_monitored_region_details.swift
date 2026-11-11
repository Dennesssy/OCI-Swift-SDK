import Foundation

// MARK: - CreateMonitoredRegionDetails

public struct CreateMonitoredRegionDetails: Codable, Sendable {

    public var resourceAnalyticsInstanceId: String?
    public var regionId: String?

    private enum CodingKeys: String, CodingKey {
        case resourceAnalyticsInstanceId, regionId
    }

    public init(
                resourceAnalyticsInstanceId: String? = nil,
                regionId: String? = nil
    ) {
        self.resourceAnalyticsInstanceId = resourceAnalyticsInstanceId
        self.regionId = regionId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateMonitoredRegionDetails: CustomStringConvertible {
    public var description: String { "CreateMonitoredRegionDetails()" }
}