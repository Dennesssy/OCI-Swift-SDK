import Foundation

// MARK: - ScriptedRestMonitorConfiguration

public struct ScriptedRestMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var verifyResponseCodes: [String]?
    public var networkConfiguration: NetworkConfiguration?
    public var reqAuthenticationScheme: RequestAuthenticationSchemesForScriptedRestEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, verifyResponseCodes, networkConfiguration, reqAuthenticationScheme
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                verifyResponseCodes: [String]? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                reqAuthenticationScheme: RequestAuthenticationSchemesForScriptedRestEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.verifyResponseCodes = verifyResponseCodes
        self.networkConfiguration = networkConfiguration
        self.reqAuthenticationScheme = reqAuthenticationScheme
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptedRestMonitorConfiguration: CustomStringConvertible {
    public var description: String { "ScriptedRestMonitorConfiguration()" }
}