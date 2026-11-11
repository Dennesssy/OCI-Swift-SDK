import Foundation

// MARK: - RestMonitorConfiguration

public struct RestMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var isRedirectionEnabled: Bool?
    public var isCertificateValidationEnabled: Bool?
    public var reqAuthenticationDetails: RequestAuthenticationDetails?
    public var clientCertificateDetails: ClientCertificateDetails?
    public var requestHeaders: [Header]?
    public var requestQueryParams: [RequestQueryParam]?
    public var requestPostBody: String?
    public var verifyResponseContent: String?
    public var verifyResponseCodes: [String]?
    public var networkConfiguration: NetworkConfiguration?
    public var requestMethod: RequestMethodsEnum?
    public var reqAuthenticationScheme: RequestAuthenticationSchemesEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, isRedirectionEnabled, isCertificateValidationEnabled, reqAuthenticationDetails, clientCertificateDetails, requestHeaders, requestQueryParams, requestPostBody, verifyResponseContent, verifyResponseCodes, networkConfiguration, requestMethod, reqAuthenticationScheme
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                isRedirectionEnabled: Bool? = nil,
                isCertificateValidationEnabled: Bool? = nil,
                reqAuthenticationDetails: RequestAuthenticationDetails? = nil,
                clientCertificateDetails: ClientCertificateDetails? = nil,
                requestHeaders: [Header]? = nil,
                requestQueryParams: [RequestQueryParam]? = nil,
                requestPostBody: String? = nil,
                verifyResponseContent: String? = nil,
                verifyResponseCodes: [String]? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                requestMethod: RequestMethodsEnum? = nil,
                reqAuthenticationScheme: RequestAuthenticationSchemesEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.isRedirectionEnabled = isRedirectionEnabled
        self.isCertificateValidationEnabled = isCertificateValidationEnabled
        self.reqAuthenticationDetails = reqAuthenticationDetails
        self.clientCertificateDetails = clientCertificateDetails
        self.requestHeaders = requestHeaders
        self.requestQueryParams = requestQueryParams
        self.requestPostBody = requestPostBody
        self.verifyResponseContent = verifyResponseContent
        self.verifyResponseCodes = verifyResponseCodes
        self.networkConfiguration = networkConfiguration
        self.requestMethod = requestMethod
        self.reqAuthenticationScheme = reqAuthenticationScheme
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestMonitorConfiguration: CustomStringConvertible {
    public var description: String { "RestMonitorConfiguration()" }
}