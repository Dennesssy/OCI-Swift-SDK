import Foundation

// MARK: - ReplicatedRegionDetails

public struct ReplicatedRegionDetails: Codable, Sendable {

    public var region: String?
    public var url: String?
    public var regionalUrl: String?
    public var state: ReplicatedRegionDetailsStateEnum?

    private enum CodingKeys: String, CodingKey {
        case region, url, regionalUrl, state
    }

    public init(
                region: String? = nil,
                url: String? = nil,
                regionalUrl: String? = nil,
                state: ReplicatedRegionDetailsStateEnum? = nil
    ) {
        self.region = region
        self.url = url
        self.regionalUrl = regionalUrl
        self.state = state
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ReplicatedRegionDetails: CustomStringConvertible {
    public var description: String { "ReplicatedRegionDetails()" }
}