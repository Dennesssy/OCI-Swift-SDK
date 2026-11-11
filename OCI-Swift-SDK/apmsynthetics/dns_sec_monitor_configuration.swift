import Foundation

// MARK: - DnsSecMonitorConfiguration

public struct DnsSecMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var verifyResponseContent: String?
    public var recordType: DnsRecordTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, verifyResponseContent, recordType
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                verifyResponseContent: String? = nil,
                recordType: DnsRecordTypeEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.verifyResponseContent = verifyResponseContent
        self.recordType = recordType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DnsSecMonitorConfiguration: CustomStringConvertible {
    public var description: String { "DnsSecMonitorConfiguration()" }
}