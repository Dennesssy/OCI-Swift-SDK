import Foundation

// MARK: - Ipv4AddressConfiguration

public struct Ipv4AddressConfiguration: Codable, Sendable {

    public var reservedIpIds: [String]?

    private enum CodingKeys: String, CodingKey {
        case reservedIpIds
    }

    public init(
                reservedIpIds: [String]? = nil
    ) {
        self.reservedIpIds = reservedIpIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Ipv4AddressConfiguration: CustomStringConvertible {
    public var description: String { "Ipv4AddressConfiguration()" }
}