import Foundation

// MARK: - DnsTraceMonitorConfiguration

public struct DnsTraceMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var verifyResponseContent: String?
    public var recordType: DnsRecordTypeEnum?
    public var `protocol`: DnsTransportProtocolEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, verifyResponseContent, recordType, `protocol`
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                verifyResponseContent: String? = nil,
                recordType: DnsRecordTypeEnum? = nil,
                `protocol`: DnsTransportProtocolEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.verifyResponseContent = verifyResponseContent
        self.recordType = recordType
        self.`protocol` = `protocol`
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DnsTraceMonitorConfiguration: CustomStringConvertible {
    public var description: String { "DnsTraceMonitorConfiguration()" }
}