import Foundation

// MARK: - NetworkMonitorConfiguration

public struct NetworkMonitorConfiguration: Codable, Sendable {

    public var networkConfiguration: NetworkConfiguration?
    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?

    private enum CodingKeys: String, CodingKey {
        case networkConfiguration, isFailureRetried, dnsConfiguration
    }

    public init(
                networkConfiguration: NetworkConfiguration? = nil,
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil
    ) {
        self.networkConfiguration = networkConfiguration
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkMonitorConfiguration: CustomStringConvertible {
    public var description: String { "NetworkMonitorConfiguration()" }
}