import Foundation

// MARK: - DnsServerMonitorConfiguration

public struct DnsServerMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var nameServer: String?
    public var networkConfiguration: NetworkConfiguration?
    public var verifyResponseContent: String?
    public var isQueryRecursive: Bool?
    public var recordType: DnsRecordTypeEnum?
    public var `protocol`: DnsTransportProtocolEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, nameServer, networkConfiguration, verifyResponseContent, isQueryRecursive, recordType, `protocol`
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                nameServer: String? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                verifyResponseContent: String? = nil,
                isQueryRecursive: Bool? = nil,
                recordType: DnsRecordTypeEnum? = nil,
                `protocol`: DnsTransportProtocolEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.nameServer = nameServer
        self.networkConfiguration = networkConfiguration
        self.verifyResponseContent = verifyResponseContent
        self.isQueryRecursive = isQueryRecursive
        self.recordType = recordType
        self.`protocol` = `protocol`
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DnsServerMonitorConfiguration: CustomStringConvertible {
    public var description: String { "DnsServerMonitorConfiguration()" }
}