import Foundation

// MARK: - DnsConfiguration

public struct DnsConfiguration: Codable, Sendable {

    public var isOverrideDns: Bool?
    public var overrideDnsIp: String?

    private enum CodingKeys: String, CodingKey {
        case isOverrideDns, overrideDnsIp
    }

    public init(
                isOverrideDns: Bool? = nil,
                overrideDnsIp: String? = nil
    ) {
        self.isOverrideDns = isOverrideDns
        self.overrideDnsIp = overrideDnsIp
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DnsConfiguration: CustomStringConvertible {
    public var description: String { "DnsConfiguration()" }
}