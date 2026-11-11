import Foundation

// MARK: - TenancyAttachmentMonitoredRegionSummary

public struct TenancyAttachmentMonitoredRegionSummary: Codable, Sendable {

    public var regionId: String?
    public var dataPopulation: TenancyAttachmentDataPopulation?

    private enum CodingKeys: String, CodingKey {
        case regionId, dataPopulation
    }

    public init(
                regionId: String? = nil,
                dataPopulation: TenancyAttachmentDataPopulation? = nil
    ) {
        self.regionId = regionId
        self.dataPopulation = dataPopulation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension TenancyAttachmentMonitoredRegionSummary: CustomStringConvertible {
    public var description: String { "TenancyAttachmentMonitoredRegionSummary()" }
}