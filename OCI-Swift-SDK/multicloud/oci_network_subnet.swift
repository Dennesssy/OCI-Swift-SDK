import Foundation

// MARK: - OciNetworkSubnet

public struct OciNetworkSubnet: Codable, Sendable {

    public var type: OciNetworkSubnetTypeEnum
    public var subnetId: String?
    public var label: String?

    private enum CodingKeys: String, CodingKey {
        case type, subnetId, label
    }

    public init(
                type: OciNetworkSubnetTypeEnum,
                subnetId: String? = nil,
                label: String? = nil
    ) {
        self.type = type
        self.subnetId = subnetId
        self.label = label
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciNetworkSubnet: CustomStringConvertible {
    public var description: String { "OciNetworkSubnet()" }
}