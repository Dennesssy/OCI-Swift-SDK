import Foundation

// MARK: - ScriptedBrowserMonitorConfiguration

public struct ScriptedBrowserMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var isCertificateValidationEnabled: Bool?
    public var isDefaultSnapshotEnabled: Bool?
    public var networkConfiguration: NetworkConfiguration?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, isCertificateValidationEnabled, isDefaultSnapshotEnabled, networkConfiguration
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                isCertificateValidationEnabled: Bool? = nil,
                isDefaultSnapshotEnabled: Bool? = nil,
                networkConfiguration: NetworkConfiguration? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.isCertificateValidationEnabled = isCertificateValidationEnabled
        self.isDefaultSnapshotEnabled = isDefaultSnapshotEnabled
        self.networkConfiguration = networkConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptedBrowserMonitorConfiguration: CustomStringConvertible {
    public var description: String { "ScriptedBrowserMonitorConfiguration()" }
}