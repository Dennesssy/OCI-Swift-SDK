import Foundation

// MARK: - FtpMonitorConfiguration

public struct FtpMonitorConfiguration: Codable, Sendable {

    public var isFailureRetried: Bool?
    public var dnsConfiguration: DnsConfiguration?
    public var isActiveMode: Bool?
    public var ftpBasicAuthenticationDetails: BasicAuthenticationDetails?
    public var downloadSizeLimitInBytes: Int?
    public var uploadFileSizeInBytes: Int?
    public var networkConfiguration: NetworkConfiguration?
    public var verifyResponseCodes: [String]?
    public var verifyResponseContent: String?
    public var ftpProtocol: FtpProtocolEnum?
    public var ftpRequestType: FtpRequestTypeEnum?

    private enum CodingKeys: String, CodingKey {
        case isFailureRetried, dnsConfiguration, isActiveMode, ftpBasicAuthenticationDetails, downloadSizeLimitInBytes, uploadFileSizeInBytes, networkConfiguration, verifyResponseCodes, verifyResponseContent, ftpProtocol, ftpRequestType
    }

    public init(
                isFailureRetried: Bool? = nil,
                dnsConfiguration: DnsConfiguration? = nil,
                isActiveMode: Bool? = nil,
                ftpBasicAuthenticationDetails: BasicAuthenticationDetails? = nil,
                downloadSizeLimitInBytes: Int? = nil,
                uploadFileSizeInBytes: Int? = nil,
                networkConfiguration: NetworkConfiguration? = nil,
                verifyResponseCodes: [String]? = nil,
                verifyResponseContent: String? = nil,
                ftpProtocol: FtpProtocolEnum? = nil,
                ftpRequestType: FtpRequestTypeEnum? = nil
    ) {
        self.isFailureRetried = isFailureRetried
        self.dnsConfiguration = dnsConfiguration
        self.isActiveMode = isActiveMode
        self.ftpBasicAuthenticationDetails = ftpBasicAuthenticationDetails
        self.downloadSizeLimitInBytes = downloadSizeLimitInBytes
        self.uploadFileSizeInBytes = uploadFileSizeInBytes
        self.networkConfiguration = networkConfiguration
        self.verifyResponseCodes = verifyResponseCodes
        self.verifyResponseContent = verifyResponseContent
        self.ftpProtocol = ftpProtocol
        self.ftpRequestType = ftpRequestType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FtpMonitorConfiguration: CustomStringConvertible {
    public var description: String { "FtpMonitorConfiguration()" }
}