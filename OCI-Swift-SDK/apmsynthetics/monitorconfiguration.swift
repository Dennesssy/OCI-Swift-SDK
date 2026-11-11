import Foundation

// MARK: - monitorconfiguration

public struct monitorconfiguration: Codable, Sendable {

    public var jsonData: Data?
    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var configType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, isFailureRetried, dnsConfiguration, configType
    }

    public init(
                jsonData: Data? = nil,
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                configType: String? = nil
    ) {
        self.jsonData = jsonData
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.configType = configType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension monitorconfiguration: CustomStringConvertible {
    public var description: String { "monitorconfiguration()" }
}