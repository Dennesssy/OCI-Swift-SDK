import Foundation

// MARK: - CreateRegionSubscriptionDetails

public struct CreateRegionSubscriptionDetails: Codable, Sendable {

    public var regionKey: String?

    private enum CodingKeys: String, CodingKey {
        case regionKey
    }

    public init(
                regionKey: String? = nil
    ) {
        self.regionKey = regionKey
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateRegionSubscriptionDetails: CustomStringConvertible {
    public var description: String { "CreateRegionSubscriptionDetails()" }
}