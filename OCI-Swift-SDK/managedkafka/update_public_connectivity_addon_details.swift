import Foundation

// MARK: - UpdatePublicConnectivityAddonDetails

public struct UpdatePublicConnectivityAddonDetails: Codable, Sendable {

    public var networkCidrs: [String]
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case networkCidrs, description
    }

    public init(
                networkCidrs: [String],
                description: String? = nil
    ) {
        self.networkCidrs = networkCidrs
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
