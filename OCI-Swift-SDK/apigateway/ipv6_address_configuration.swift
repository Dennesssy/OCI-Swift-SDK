import Foundation

// MARK: - Ipv6AddressConfiguration

public struct Ipv6AddressConfiguration: Codable, Sendable {

    public var addresses: [String]?
    public var subnetCidrs: [String]?

    private enum CodingKeys: String, CodingKey {
        case addresses, subnetCidrs
    }

    public init(
                addresses: [String]? = nil,
                subnetCidrs: [String]? = nil
    ) {
        self.addresses = addresses
        self.subnetCidrs = subnetCidrs
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Ipv6AddressConfiguration: CustomStringConvertible {
    public var description: String { "Ipv6AddressConfiguration()" }
}