import Foundation

// MARK: - BrowserMonitorConfiguration

public struct BrowserMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var isCertificateValidationEnabled: Bool?
    public var isDefaultSnapshotEnabled: Bool?
    public var verifyTexts: [VerifyText]?
    public var verifyResponseCodes: [String]?
    public var networkConfiguration: NetworkConfiguration?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, isCertificateValidationEnabled, isDefaultSnapshotEnabled, verifyTexts, verifyResponseCodes, networkConfiguration
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                isCertificateValidationEnabled: Bool? = nil,
                isDefaultSnapshotEnabled: Bool? = nil,
                verifyTexts: [VerifyText]? = nil,
                verifyResponseCodes: [String]? = nil,
                networkConfiguration: NetworkConfiguration? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.isCertificateValidationEnabled = isCertificateValidationEnabled
        self.isDefaultSnapshotEnabled = isDefaultSnapshotEnabled
        self.verifyTexts = verifyTexts
        self.verifyResponseCodes = verifyResponseCodes
        self.networkConfiguration = networkConfiguration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BrowserMonitorConfiguration: CustomStringConvertible {
    public var description: String { "BrowserMonitorConfiguration()" }
}