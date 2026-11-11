import Foundation

// MARK: - ExternalLocationSummary

public struct ExternalLocationSummary: Codable, Sendable {

    public var cspRegion: String?
    public var cspRegionDisplayName: String?

    private enum CodingKeys: String, CodingKey {
        case cspRegion, cspRegionDisplayName
    }

    public init(
                cspRegion: String? = nil,
                cspRegionDisplayName: String? = nil
    ) {
        self.cspRegion = cspRegion
        self.cspRegionDisplayName = cspRegionDisplayName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ExternalLocationSummary: CustomStringConvertible {
    public var description: String { "ExternalLocationSummary()" }
}